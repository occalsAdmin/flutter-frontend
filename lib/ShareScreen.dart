

import 'package:emoji_feedback/emoji_feedback.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'EnterAddress.dart';
import 'OrderScreen1.dart';




class ShareScreen extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<ShareScreen> {
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
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/007/099/033/small/blue-bokeh-light-effect-background-design-illustration-vector.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,


          body: Column(
            children: [
              SizedBox(height:50),
              Positioned(
                top:0.0,
                right: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Row(
                      children:[
                        SizedBox(width:330),
                        new IconButton(
                            icon: Icon(Icons.cancel,color: Colors.black,),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),]),
                ),
              ),
              SizedBox(height:30),
              Text(
                "     Rate your experience",
                style: TextStyle(color: Colors.black, fontSize: 25.0,fontWeight:FontWeight.w400),
              ),
              SizedBox(height:50),
              Container(
                height:70,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(

                        image: NetworkImage("https://images.emojiterra.com/google/android-oreo/512px/1f468-1f4bc.png"), fit: BoxFit.contain)),
              ),
              SizedBox(height:30),
              Text(
                "     Chandresekhar singh",
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight:FontWeight.w500),
              ),
              SizedBox(height:60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '',

                    ),
                  ),
                  EmojiFeedback(
                    onChange: (index) {
                      print(index);
                    },
                  ),
                ],
              ),
              SizedBox(height:40),
              RaisedButton(
                onPressed: () {
                  // Navigator.push(context, new MaterialPageRoute(builder: (context) => OrderPage()));
                },
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Text(
                    "Continue",
                    style:TextStyle(color:Colors.white)
                ),
              ),
              SizedBox(height:20)
            ],
          ),
        ));


  }
}


