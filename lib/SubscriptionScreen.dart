import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:vertical_tabs/vertical_tabs.dart';

import 'DailyScreen.dart';
import 'MonthlyScreen.dart';
import 'WeeklyScreen.dart';





class SubscriptionScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<SubscriptionScreen> {
  bool success = false;
  int _selectedIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar:AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.chevron_left,
                size: 40.0,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title:
            Row(
                children:[
                  Text(
                      "        Subscriptions",
                      style:TextStyle(color:Colors.black)
                  ),


                  SizedBox(width:60),

                  Text(
                      "Empty Cart",
                      style:TextStyle(color:Theme.of(context).primaryColor,fontSize:15)
                  ),])
        ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

            Container(
            alignment: Alignment.center,
              child: Text(

                "Rs 08 Saved On this Order",

              ),
              margin: EdgeInsets.only(left: 12, top: 12),
            ),
SizedBox(height:10),
              Material(
                    color: Colors.white,
                    child: TabBar(
                      unselectedLabelColor: Theme.of(context).primaryColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Theme.of(context).primaryColor, Theme.of(context).primaryColor]),
                          borderRadius: BorderRadius.circular(10),
                          color:Theme.of(context).primaryColor),
                      tabs: [
                        Tab(text: "Custom"),

                        Tab(text: "Daily"),
                      ],
                    ),
                  ),


                Expanded(
                  child: TabBarView(
                    children: [
                      WeeklyScreen(),

                      DailyScreen()
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