

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'EnterAddress.dart';
import 'OrderScreen1.dart';




class SubscriptionsScreen extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<SubscriptionsScreen> {
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
                    "          Subscriptions",
                    style:TextStyle(color:Colors.black)
                ),


              ])
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(height:30),
          Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(


                  child:Text(
                      "      My Subscriptions",
                      style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                  ),
                )]),
          SizedBox(height:20),
          Container(
            padding:EdgeInsets.fromLTRB(10, 10, 10, 0),

            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              child:
                  Column(
                    children:[

                    Container(
                     alignment: Alignment.topLeft,
height:30,
                    color:Colors.blue,
                    child:
                        Column(
                          children:[
                            SizedBox(height:5),
                    Text('  August 2022'),
                      ])
                  ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                      children: [

                       SizedBox(height:20),
                       Text(' Fresh Fruits'),
                        SizedBox(height:20),
                        Text('  Number Of delivery date:'),
                        SizedBox(height:20),

                       Text('     4th & 20th July(16 Days) '), SizedBox(height:20),

                      ],
                    ),
SizedBox(width:60),
Container(
  width:90,
  child:
  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQQFU7sS2J2ydzU8VlE2HXyWuqHKSf1LpcSQvBDbgzj0x58JT6OgSjt4M4W87tSif3J0&usqp=CAU',
                    ),
                  ),
                ],
              ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => OrderScreen1()));
                              },
                              color: Colors.white,
                              padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4))),
                              child: Text(
                                  "Add Item",
                                  style:TextStyle(color:Theme.of(context).primaryColor)
                              ),
                            ),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => OrderScreen1()));
                              },
                              color: Colors.white,
                              padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4)),),
                              child: Text(
                                  "Renew Subscriptions",
                                  style:TextStyle(color:Theme.of(context).primaryColor)
                              ),
                            ),
                          ]),
                      SizedBox(height:10),
              ]),
            ),
          ),
          SizedBox(height:20),
          Container(
            padding:EdgeInsets.fromLTRB(10, 10, 10, 0),

            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              child:
              Column(
                  children:[

                    Container(
                        alignment: Alignment.topLeft,
                        height:30,
                        color:Colors.blue,
                        child:
                        Column(
                            children:[
                              SizedBox(height:5),
                              Text('  August 2022'),
                            ])
                    ),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [

                            SizedBox(height:20),
                            Text(' Milk'),
                            SizedBox(height:20),
                            Text('  Number Of delivery date:'),
                            SizedBox(height:20),

                            Text('     6th & 12th July(6 Days) '), SizedBox(height:20),

                          ],
                        ),
                        SizedBox(width:60),
                        Container(
                            width:90,
                            child:
                           Image.network(
                                'https://www.kmfnandini.coop/sites/default/files/styles/product_popup_600x500/public/products/Homogenised-Cow%27s-Pure-Milk.png?itok=ipfBE7Z2',
                              ),
                            ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          RaisedButton(
                            onPressed: () {
                              Navigator.push(context, new MaterialPageRoute(builder: (context) => OrderScreen1()));
                            },
                            color: Colors.white,
                            padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4))),
                            child: Text(
                                "Add Item",
                                style:TextStyle(color:Theme.of(context).primaryColor)
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              Navigator.push(context, new MaterialPageRoute(builder: (context) => OrderScreen1()));
                            },
                            color: Colors.white,
                            padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4)),),
                            child: Text(
                                "Renew Subscriptions",
                                style:TextStyle(color:Theme.of(context).primaryColor)
                            ),
                          ),
                        ]),
                    SizedBox(height:10),
                  ]),
            ),
          ),
        ],
      ),
    );

  }
}


