

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'EnterAddress.dart';
import 'MyWishlistScreen.dart';
import 'OrderScreen1.dart';




class WishlistScreen extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<WishlistScreen> {
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
                    "                Wishlist",
                    style:TextStyle(color:Colors.black)
                ),


              ])
      ),
      body: Container(
          width:440,
        color:HexColor("#F0FFFF"),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          SizedBox(height:230),

          Container(
           height:130,
            width:140,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcg448jP0AJJEyApL6yzGV4IpFKqHqtEq9z7oOU9FMHqWqzMIZe5k9nsqEXyXESW3PCes&usqp=CAU"), fit: BoxFit.fill)),
          ),
          SizedBox(height:20),
          Text(
            "    Your Wishlists is Currently Empty",
            style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight:FontWeight.w300),
          ),
          SizedBox(height:40),
          RaisedButton(
            onPressed: () {
               Navigator.push(context, new MaterialPageRoute(builder: (context) => MyWishlistScreen()));
            },
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
            child: Text(
                "Browse Product",
                style:TextStyle(color:Colors.white)
            ),
          ),
          SizedBox(height:20)
        ],
      )),
    );

  }
}


