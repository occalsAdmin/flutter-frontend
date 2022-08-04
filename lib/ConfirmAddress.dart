

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'EnterAddress.dart';




class ConfirmAddress extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<ConfirmAddress> {
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
                    "        Location Information",
                    style:TextStyle(color:Colors.black)
                ),


             ])
      ),
      body:
          Column(
      children:[
      Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(

            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)
            ),
          ),
          child:Row(
              children: [
                IconButton(
                    onPressed: () {
                    //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                    },
                    icon: Icon(Icons.search,color:Theme.of(context).primaryColor)),
                Flexible(
                  flex: 1,
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        hintText: 'Search New Address',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15
                        ),
                        prefixIcon: Container(
                          padding: EdgeInsets.all(15),

                          width: 18,
                        )
                    ),
                  ),
                )])),
      SizedBox(height:500),
      RaisedButton(
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
        },
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Text(
            "Confirm And Continue",
            style:TextStyle(color:Colors.white)
        ),
      ),
    ])
    );
  }
}


