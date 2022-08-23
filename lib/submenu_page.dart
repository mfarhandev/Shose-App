import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubMenuPage extends StatefulWidget {
   SubMenuPage({required this .name,required this.desc, required this .img, required this.price});
  late String name ;
  late String desc ;
  late String img ;
  late String price;
  @override
  State<SubMenuPage> createState() => _SubMenuPageState();
}

class _SubMenuPageState extends State<SubMenuPage> {

  late List sizes = ["40","41","42","43","44","45","46","47","48","49"];
  late String shosesize = "40";
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            SizedBox(
              height: h * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    )),
                Align(
                  alignment: Alignment.topCenter,
                  child: Icon(
                    FontAwesomeIcons.leaf,
                    color: Colors.black,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Center(
              child: Text(
                widget.name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MeriendaBold"),
              ),
            ),
            Center(
              child: Text(
                widget.desc,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MeriendaBold"),
              ),
            ),
            Hero(
              tag: widget.img,
              child: Container(
                height: h*0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.img),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Text(
              "💧  Waterproof",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "MeriendaBold"),
            ),
            Text(
              "💥  Eco Material",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "MeriendaBold"),
            ),
            Text(
              "⚛  Flexible",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "MeriendaBold"),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Text(
              "Size",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "MeriendaBold"),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Container(
              height: h*0.06,
              child: ListView.builder(
                itemCount: sizes.length,
                physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)
                  {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            shosesize = sizes[index];
                          });
                        },
                        child: Container(
                          width: 70.0,
                          margin: EdgeInsets.only(left: index==0?0:10),
                          decoration: BoxDecoration(
                            color: shosesize==sizes[index]?Colors.black:Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(child: Text(sizes[index],style: TextStyle(color:shosesize==sizes[index]?Colors.white:Colors.grey,fontSize: 18.0,fontWeight:shosesize==sizes[index]?FontWeight.bold:FontWeight.w700,fontFamily: "MeriendaRegular"),)),
                        ),
                      ),
                    );
                  }
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "MeriendaBold"),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text(
                      "\$"+widget.price,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "MeriendaBold"),
                    ),
                  ],
                ),
                SizedBox(
                 width: 50.0,
                ),
                Container(
                  height: h*0.09,
                  width: MediaQuery.of(context).size.width*0.5,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "MeriendaBold"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Center(
              child: Text(
                "delivered within 6 - 7 hours",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MeriendaBold"),
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
