import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';


import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:hexcolor/hexcolor.dart';


import 'dart:convert';
import 'dart:io';

import 'AboutScreen.dart';
import 'FavScreen.dart';
import 'LoginScreen.dart';
import 'MyProfileScreen.dart';
import 'OrderScreen.dart';
import 'RateScreen.dart';
import 'ShareScreen.dart';
import 'SubscriptionsScreen.dart';
import 'SupportScreen.dart';
import 'TimeSlotScreen.dart';
import 'WishlistScreen.dart';
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height-0);
    path.quadraticBezierTo(width/2, height, width, height-200);
    path.lineTo(width,10);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
class ProfileScreen extends StatefulWidget  {
  @override
  _RegisterState createState() => _RegisterState();
}


class _RegisterState extends State<ProfileScreen> {



  late String child = "";
  @override
  void initState() {
    super.initState();
    check_if_already_login();



  }
  @override
  void dispose() {

    super.dispose();
  }
  void check_if_already_login() async {



    setState(() {

    });
  }

  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("LogOut"),
      onPressed:  () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("    Logout"),
      content: Text("Are you sure want to logout?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


  @override
  Widget build(BuildContext context) {


    return


      Scaffold(
          backgroundColor: Colors.white,

          body:
          Container(
            child:
Column(
            children:[
            Expanded(
            child: new ClipPath(
            clipper: MyClipper(),

            child: Container(
              width: 690.0,
              height: 320.0,
              decoration: BoxDecoration(

                color: HexColor("#202BC6"),

              ),

              alignment: Alignment.topLeft,

              child: Column(
                children: <Widget>[
                  SizedBox(height:40),
                  Text(
                    "   My Account",
                    style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color:Colors.white),
                  ),
                  SizedBox(height:10),
                  Text(
                    "         Chandreasekhar Singh",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300, color:Colors.white),
                  ),
                  SizedBox(height:10),
                  Text(
                    "8965432178",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300, color:Colors.white),
                  ),

                ],
              ),
            ),
          ),
      ),
            Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[

    GestureDetector(
    onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyProfileScreen()));
    },
    child:
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                                },
                                icon: Icon(Icons.person,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "Profile",
                              style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),
                  SizedBox(height:10),
    GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderScreen()));
    },
    child:
    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                                },
                                icon: Icon(Icons.list_alt,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "My Orders",
                              style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),

                  SizedBox(height:10),
    GestureDetector(
    onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WishlistScreen()));
    },
    child:
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                                },
                                icon: Icon(Icons.library_books_outlined,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "Wishlists",
                              style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),
                  SizedBox(height:10),
    GestureDetector(
    onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubscriptionsScreen()));
    },
    child:
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                                },
                                icon: Icon(Icons.subscriptions,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "Subscriptions",
                              style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),
                  SizedBox(height:10),
    GestureDetector(
    onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShareScreen()));
    },
    child:
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                                },
                                icon: Icon(Icons.share,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "Share App",
                              style: TextStyle(color:Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),

                  SizedBox(height:5),
    GestureDetector(
    onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FavScreen()));
    },
    child:
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                                },
                                icon: Icon(Icons.favorite,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "My Favorite Vendor",
                              style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),

                  SizedBox(height:20),
                  Text(
                    "                OTHER INFORMATIONS",
                    style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                  ),
                  SizedBox(height:5),
    GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutScreen()));
    },
    child:
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {

                                },
                                icon: Icon(Icons.roundabout_left,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "About Occals",
                              style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),
                  SizedBox(height:5),
    GestureDetector(
    onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RateScreen()));
    },
    child:
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                                },
                                icon: Icon(Icons.star,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "Rate Us",
                              style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),
                  SizedBox(height:5),
    GestureDetector(
    onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SupportScreen()));
    },
    child:
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                                },
                                icon: Icon(Icons.support_agent,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "Support",
                              style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),
                  SizedBox(height:5),
    GestureDetector(
    onTap: () {
      showAlertDialog(context);
    },
    child:
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            IconButton(
                                onPressed: () {
                                 // showAlertDialog(context);
                                },
                                icon: Icon(Icons.logout,color:Theme.of(context).primaryColor,size:20)),
                            SizedBox(width:10),
                            Text(
                              "Logout",
                              style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.w400),
                            )
                          ]))),

                ],
              ),
            ),])
          ),      );
  }

}