import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shose_app/menu_page.dart';

class StaterPage extends StatefulWidget {
  const StaterPage({Key? key}) : super(key: key);

  @override
  State<StaterPage> createState() => _StaterPageState();
}

class _StaterPageState extends State<StaterPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "images/shoebackground.jpeg",
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.2),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
                Center(
                  child: Text(
                    "Destiny",
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "MeriendaBold"),
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: h * 0.2,
                ),
                Text(
                  "between saying & doing many pair of shoe are worn",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                      fontFamily: "MeriendaRegular"),
                ),
                SizedBox(
                  height: h * 0.26,
                ),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuPage()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: h*0.08,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      border: Border.all(color: Colors.black,width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("have a look",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700,fontFamily: "MeriendaBold"),),
                        Icon(FontAwesomeIcons.shoePrints,color: Colors.orange,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Text(
                  "we have right pair for you",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: "MeriendaRegular"),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
