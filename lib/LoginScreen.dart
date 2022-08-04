import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'OtpPage.dart';


class LoginScreen extends StatelessWidget {
  final Color? primaryColor;
  final Color? backgroundColor;
  final AssetImage backgroundImage;

  LoginScreen({
    Key? key,
    this.primaryColor = Colors.lightBlue,
    this.backgroundColor = Colors.white,
    this.backgroundImage = const AssetImage("assets/logo.png"),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:000,
        decoration: BoxDecoration(
        image: DecorationImage(
        image:AssetImage("assets/login.png"),
    fit: BoxFit.fill,
    ),
    ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          height: 600,
          decoration: BoxDecoration(

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              SizedBox(height:40),
Row(
          children:[
            SizedBox(width:40),
            Container(
                    width: 140.0,
                    height: 120.0,
                    decoration: BoxDecoration(

                      color: HexColor("#202BC6"),
                      image: new DecorationImage(
                        alignment: FractionalOffset.centerLeft,
                        scale:12.5,
fit:BoxFit.contain,
                        image: this.backgroundImage,

                      ),
                    ),

                    alignment: Alignment.topLeft,

                    child: Column(
                      children: <Widget>[
                     /*   Text(
                          "PackingX",
                          style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: this.primaryColor),
                        ),*/

                      ],
                    ),


              ),]),
      SizedBox(height:90),
      Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child:
            Column(
              children:[
              Text(
                "Occals Shop",
                style: TextStyle(color: HexColor("#202BC6"), fontSize: 25.0,fontWeight:FontWeight.w400),
              ),
                Text(
                  "With Locals",
                  style: TextStyle(color: HexColor("#202BC6"), fontSize: 25.0,fontWeight:FontWeight.w400),
                )
              ])),
              SizedBox(height:90),



              Container(

                decoration: BoxDecoration(
                  color:HexColor("#F0FFFF"),
                  border: Border.all(
                    color:  Theme.of(context).primaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      child: Text("+91",style:TextStyle(fontWeight: FontWeight.bold))
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Theme.of(context).primaryColor,
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    new Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Phone Number',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height:50),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child:  Row(
                  children: <Widget>[
                    ButtonTheme(
minWidth:370,
                      height: 50.0,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        splashColor:Theme.of(context).primaryColor,
                        color: Theme.of(context).primaryColor,
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: Text(
                                "Send OTP",
                                style: TextStyle(color: Colors.white,fontSize: 20),
                              ),
                            ),


                          ],
                        ),
                        onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpPage())),
                        },
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height-80);
    path.quadraticBezierTo(width/2, height, width, height-300);
    path.lineTo(width,30);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}