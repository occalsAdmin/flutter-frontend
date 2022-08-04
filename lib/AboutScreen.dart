

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'EnterAddress.dart';
import 'OrderScreen1.dart';




class AboutScreen extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<AboutScreen> {
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
                      "          About Us",
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
          color:Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[


              SizedBox(height:10),


              Text(
                  "About Occals",
                  style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
              ),
              SizedBox(height:10),
              Text('A cancellation policy dictates how much refund you can get if you cancel the booking and how early you should cancel it, if you want a full refund,\n\nIf you want to know what your refund will be, start cancelling your reservation and we’ll show you a detailed breakdown. Depending on the length of your stay, when you cancel, and the cancellation policy that applies to your reservation, you may get a partial refund if you cancel after check-in – learn more about different cancellation policies.')
            ],
          ),
          margin: EdgeInsets.only(top: 0),
        )]),
              SizedBox(height:20),
              SizedBox(height:10),
              Text('A cancellation policy dictates how much refund you can get if you cancel the booking and how early you should cancel it, if you want a full refund,\n\nIf you want to know what your refund will be, start cancelling your reservation and we’ll show you a detailed breakdown. Depending on the length of your stay, when you cancel, and the cancellation policy that applies to your reservation, you may get a partial refund if you cancel after check-in – learn more about different cancellation policies.'),

              SizedBox(height:10),
              Divider(thickness:2,color:Colors.blue)
            ])
    );
  }
}


