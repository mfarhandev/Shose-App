import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shose_app/submenu_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late List categories = ["All", "FOR MEN", "FOR WOMEN", "FOR KIDS"];
  late List images = ["images/shoe1.png","images/shoe2.png","images/shoe3.png","images/shoe4.png","images/shoe5.png"];
  late List names = ["Air max","Pastero","Spongy","Velvet","Destiny"];
  late List Price =["2999","1600","3200","1000","1599"];
  late List desc = ["floating air","disco bar blue","Success like pop","Next cushion","rocky hard"];
  late List<Color> color = [Colors.redAccent,Colors.purple,Colors.yellowAccent,Colors.red,Colors.grey];
  late String category = "All";
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 30.0),
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
                    onTap: (){
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
                  Icons.shopping_cart,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.05,
          ),
          Text(
            "BELIEVE YOU CAN MAKE IMPACT",
            style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: "MeriendaBold"),
          ),
          SizedBox(
            height: h * 0.05,
          ),
          Container(
            height: h*0.06,
            child: ListView.builder(
              itemCount: categories.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)
                {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          category = categories[index];
                        });
                      },
                      child: Container(
                        width: index==0?70:135,
                        margin: EdgeInsets.only(left: index==0?0:10),
                        decoration: BoxDecoration(
                          color: category==categories[index]?Colors.black:Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(child: Text(categories[index],style: TextStyle(color:category==categories[index]?Colors.white:Colors.grey,fontSize: 18.0,fontWeight:category==categories[index]?FontWeight.bold:FontWeight.w700,fontFamily: "MeriendaRegular"),)),
                      ),
                    ),
                  );
                }
            ),
          ),
          SizedBox(
            height: h * 0.05,
          ),
          ListView.builder(
            itemCount: names.length,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index)
          {
            return GestureDetector(
              onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubMenuPage(name: names[index], desc: desc[index], img: images[index], price: Price[index])),
              );
            },
              child: Card(
                child:Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: h*0.4,
                          width: 300,
                          decoration: BoxDecoration(
                            color: color[index].withOpacity(0.4),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal:20.0,vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(names[index],style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "MeriendaBold",fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Text("\$"+Price[index],style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "MeriendaBold",fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Icon(Icons.add_circle,color: Colors.white,size: 30,),
                                SizedBox(
                                  height: h * 0.02,
                                ),
                                Text(desc[index],style: TextStyle(color: Colors.white,fontSize:25,fontFamily: "MeriendaBold",fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Hero(
                        tag: images[index],
                          child: Image.asset(images[index])),
                    ),
                  ],
                ),
              ),
            );
          }
          ),

        ],
      ),
    );
  }
}
