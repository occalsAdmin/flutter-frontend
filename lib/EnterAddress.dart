

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'PaymentPage.dart';




class EnterAddress extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<EnterAddress> {
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
                      "       Enter Address Details",
                      style:TextStyle(color:Colors.black)
                  ),


                ])
        ),
        body:
        Column(
            children:[
              SizedBox(height:10),
              Row(
                children:[
              Text("     Saved Location ",
                style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Colors.black),
              ),
              SizedBox(width:200),
              Text("Change ",
                style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Theme.of(context).primaryColor),
              ),
                  ]),
              SizedBox(height:20),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
color: Colors.orangeAccent,
                    border: Border.all(
                      color: Colors.white,
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
                             //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                            },
                            icon: Icon(Icons.pin_drop_sharp,color:Colors.white)),
                        Flexible(
                          flex: 1,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                fillColor: Colors.orangeAccent,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none
                                ),
                                hintText: 'Whitefield,Hoodi,560048',
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20),
                                prefixIcon: Container(
                                  padding: EdgeInsets.all(15),

                                  width: 18,
                                )
                            ),
                          ),
                        ),

                      ])),
              SizedBox(height:20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.grey.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    new Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                         labelText: "House No & Floor",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height:20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.apartment,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.grey.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    new Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Building & Block No",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height:20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.grey.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    new Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Landmark & Area Name (Optional)",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height:20),
       Row(
         children:[
             Text("      Add Additional Label ",
                style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Colors.black),
              )]),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
                },
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Text(
                    "Home",
                    style:TextStyle(color:Colors.white)
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
                },
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Text(
                    "Work",
                    style:TextStyle(color:Colors.white)
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
                },
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Text(
                    "Other",
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
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
                      },
                      color: Colors.grey,
                      padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Text(
                          "6am to 8am",
                          style:TextStyle(color:Colors.white)
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
                      },
                      color: Colors.grey,
                      padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Text(
                          "8am to 10am",
                          style:TextStyle(color:Colors.white)
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => EnterAddress()));
                      },
                      color: Colors.grey,
                      padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Text(
                          "10am to 12am",
                          style:TextStyle(color:Colors.white)
                      ),
                    ),
                  ]),
              SizedBox(height:60),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => PaymentPage()));
                },
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Text(
                    "Save And Continue",
                    style:TextStyle(color:Colors.white)
                ),
              ),
            ])
    );
  }
}


