import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';


import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:table_calendar/table_calendar.dart';


import 'dart:convert';
import 'dart:io';

import 'CartPage2.dart';
import 'TimeSlotScreen.dart';
import 'cartPage.dart';

class DailyScreen extends StatefulWidget  {
  @override
  _RegisterState createState() => _RegisterState();
}


class _RegisterState extends State<DailyScreen> {



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




  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: HexColor("#051094")
    ));
    return


      Scaffold(
          backgroundColor: Colors.white,

          body:

        SingleChildScrollView(
        child:
          Column(
              children:[
                SizedBox(height:20),


                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),

                SizedBox(height:20),
                Container(
                  alignment: Alignment.center,
                  child: Text(

                    "Number of delivery date:4th & 8th July(2 Days)",

                  ),
                  margin: EdgeInsets.only(left: 12, top: 12),
                ),
                SizedBox(height:20),
                Container(
                  alignment: Alignment.centerLeft,
                  child:
                  Row(
                      children:[
                        Text(

                          "           Total amount:",

                        ),
                        SizedBox(width:180),
                        Text(

                            "Rs 960",
                            style:TextStyle(fontWeight: FontWeight.bold)

                        ),
                      ]),
                  margin: EdgeInsets.only(left: 12, top: 12),
                ),
                SizedBox(height:10),
                Divider(thickness:1,color:Colors.grey),
                SizedBox(height:20),
                Container(
                  alignment: Alignment.centerLeft,
                  child:
                  Text(

                      "      Choose Your Time Slot",
                      style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)

                  ),

                ),
                SizedBox(height:10),
                Row(
                    children:[
                      SizedBox(width:24),
                      Container(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,

                            shape: BoxShape.circle,
                          ),
                          height: 30.0,
                          width: 20.0,

                        ),

                      ),
                      SizedBox(width:6),
                      Text(

                          "Available",
                          style:TextStyle(fontWeight: FontWeight.bold)

                      ),
                      SizedBox(width:7),
                      Container(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,

                            shape: BoxShape.circle,
                          ),
                          height: 30.0,
                          width: 20.0,

                        ),

                      ),
                      SizedBox(width:6),
                      Text(

                          "Selected",
                          style:TextStyle(fontWeight: FontWeight.bold)

                      ),
                      SizedBox(width:7),
                      Container(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,

                            shape: BoxShape.circle,
                          ),
                          height: 30.0,
                          width: 20.0,

                        ),

                      ),
                      SizedBox(width:6),
                      Text(

                          "Not Available",
                          style:TextStyle(fontWeight: FontWeight.bold)

                      ),
                    ]),
                SizedBox(height:20),
                Divider(thickness:1),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      RaisedButton(
                        onPressed: () {
                          //  Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
                        },
                        color: Colors.grey,
                        padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Text(
                            "6 am to 8 am",
                            style:TextStyle(color:Colors.white)
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          // Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
                        },
                        color: Colors.orangeAccent,
                        padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Text(
                            "8 am to 10 am",
                            style:TextStyle(color:Colors.white)
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          //  Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
                        },
                        color: Colors.green,
                        padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Text(
                            "10 am to 12 pm",
                            style:TextStyle(color:Colors.white)
                        ),
                      ),
                    ]),
                Divider(thickness:1),
                SizedBox(height:20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Theme.of(context).primaryColor,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "1 Item Rs 50",
                                  style: TextStyle(color:Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CartPage2(),
                                // Pass the arguments as part of the RouteSettings. The
                                // DetailScreen reads the arguments from these settings.

                              ),
                            );
                          },
                          color: Theme.of(context).primaryColor,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "View Cart",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ]))
      );
  }

}