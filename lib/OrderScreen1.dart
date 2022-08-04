

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'EnterAddress.dart';




class OrderScreen1 extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<OrderScreen1> {
  late LatLng _center ;
  late Position currentLocation;
  String addresses="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    final coordinates = new Coordinates(1.10, 45.50);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);

    var first = addresses.first;
    print("${first.featureName} : ${first.addressLine}");
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
                      "           My Orders",
                      style:TextStyle(color:Colors.black)
                  ),


                ])
        ),
        body:
        Column(
            children:[
              SizedBox(height:30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Text(
                      "Nandhani Tetrapack",
                      style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.bold),
                    ),
                    Text(
                      "         Rs 50",
                      style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight:FontWeight.bold),
                    ),]),
              SizedBox(height:20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Text(
                      "Order #12345 12/07/2022 at 4 30pm",
                      style: TextStyle(color: Colors.black45, fontSize: 12.0,fontWeight:FontWeight.w300),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => OrderScreen1()));
                      },
                      color: Colors.green,
                      padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Text(
                          "Delivered",
                          style:TextStyle(color:Colors.white)
                      ),
                    ),
                  ]),
              SizedBox(height:20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => OrderScreen1()));
                      },
                      color: Colors.white,
                      padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Text(
                          "Re Order",
                          style:TextStyle(color:Colors.blueAccent)
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => OrderScreen1()));
                      },
                      color: Colors.white,
                      padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4)),),
                      child: Text(
                          "Rate Order",
                          style:TextStyle(color:Colors.blueAccent)
                      ),
                    ),
                  ]),
              SizedBox(height:10),
              Divider(thickness:2,color:Colors.blue)
            ])
    );
  }
}


