

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'EnterAddress.dart';
import 'OrderScreen1.dart';




class SupportScreen extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<SupportScreen> {
  late LatLng _center ;
  late Position currentLocation;
  String addresses="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
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
                      "          Occals Support",
                      style:TextStyle(color:Colors.black)
                  ),


                ])
        ),
        body:
        Column(
            children:[
              SizedBox(height:30),
              Column(

                  children:[
                    Container(

                        padding: const EdgeInsets.fromLTRB(1,0,0,0),
                    child:Text(
                        "Your Personal Virtual Assistance",
                        style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                    ),
                  )]),
              SizedBox(height:20),
              Container(

                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(left: 10.0, right:90.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child:     Card(
                        color: Colors.lightBlueAccent,
                          elevation: 5,
                          child:  Column(
crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                SizedBox(height:20),
                                Text('    OccalsBuddy',style:TextStyle(fontWeight: FontWeight.bold,color:Theme.of(context).primaryColor)),
                                SizedBox(height:20),
                                Text('    Hi, Welcome To Occals Support',style:TextStyle(fontWeight: FontWeight.w400)),
                                SizedBox(height:10),
                                Text('                                          10 30 pm',style:TextStyle(fontWeight: FontWeight.w400,color:Colors.grey)),

                                ])
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:20),
              Container(

                margin: const EdgeInsets.only(top: 5.0),
                padding: const EdgeInsets.only(left: 10.0, right:90.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                    Card(
                          color: Colors.lightBlueAccent,
                          elevation: 5,
                          child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:[
                                SizedBox(height:20),
                                Text('    OccalsBuddy',style:TextStyle(fontWeight: FontWeight.bold,color:Theme.of(context).primaryColor)),
                                SizedBox(height:20),
                                Text('    How, May I Help You?',style:TextStyle(fontWeight: FontWeight.w400)),
                                SizedBox(height:10),
                                Text('                                          11 00 pm',style:TextStyle(fontWeight: FontWeight.w400,color:Colors.grey)),

                              ])
                    ),
                      SizedBox(height:20),
                                Text('    Issue with An order',style:TextStyle(fontWeight: FontWeight.w400,color:Theme.of(context).primaryColor)),
                                SizedBox(height:20),
                                Divider(thickness:2),
                                Text('   Issue with Cashback/Refund',style:TextStyle(fontWeight: FontWeight.w400,color:Theme.of(context).primaryColor)),
                                SizedBox(height:20),
                      Divider(thickness:2),
                                Text('    Issue with placing Order',style:TextStyle(fontWeight: FontWeight.w400,color:Theme.of(context).primaryColor)),
                      SizedBox(height:20),
                      Divider(thickness:2),
                      Text('    Offers/Promotions',style:TextStyle(fontWeight: FontWeight.w400,color:Theme.of(context).primaryColor)),
                      SizedBox(height:20),
                      Divider(thickness:2),
                      Text('    Leave Feedback',style:TextStyle(fontWeight: FontWeight.w400,color:Theme.of(context).primaryColor)),
                      SizedBox(height:20),
                      Divider(thickness:2),
                              ])
                      ),]),
                    ),
                  ],
                ),
              );

  }
}


