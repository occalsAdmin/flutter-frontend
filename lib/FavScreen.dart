

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'EnterAddress.dart';
import 'OrderScreen1.dart';




class FavScreen extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<FavScreen> {
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
                      "         My Favorite Vendor",
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
                              "My Favorite Vendor",
                              style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                          ),
                          SizedBox(height:20),
                ListTile(
                  leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 54,
                        maxWidth: 64,
                        maxHeight: 84,
                      ),
                      child: Image.network("https://sparnigeria.com/wp-content/uploads/2020/11/SPAR-Market-Logo-2.png", fit: BoxFit.fill)),
                  title: const Text(
                    'Spar Market',
                    textScaleFactor: 1.5,
                      style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                  ),
                  trailing: const Icon(Icons.favorite,color:Colors.red),
                  subtitle: Column(
                    children:[
                    SizedBox(height:10),
                    Text('IndiraNagar Phase 01 near Metro station', style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400)),
                      ]),
                  selected: true,
                  onTap: () {
                    setState(() {

                    });
                  },
                ),
                          Divider(thickness:1,color:Colors.blue),
                          SizedBox(height:20),
                          ListTile(
                            leading: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 44,
                                  minHeight: 54,
                                  maxWidth: 64,
                                  maxHeight: 84,
                                ),
                                child: Image.network("https://www.nextbigbrand.in/wp-content/uploads/2019/09/dmart-vector-logo.png", fit: BoxFit.fill)),
                            title: const Text(
                                'Dmart',
                                textScaleFactor: 1.5,
                                style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                            ),
                            trailing: const Icon(Icons.favorite,color:Colors.red),
                            subtitle: Column(
                                children:[
                                  SizedBox(height:10),
                                  Text('IndiraNagar Phase 01 near Metro station', style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400)),
                                ]),
                            selected: true,
                            onTap: () {
                              setState(() {

                              });
                            },
                          ),
                          Divider(thickness:1,color:Colors.blue),
                          SizedBox(height:20),
                          ListTile(
                            leading: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 44,
                                  minHeight: 54,
                                  maxWidth: 64,
                                  maxHeight: 84,
                                ),
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeB-6F5h5NK9fut9Y_B_TLBAWHviLu37CfDQ&usqp=CAU", fit: BoxFit.fill)),
                            title: const Text(
                                'Star Bazar',
                                textScaleFactor: 1.5,
                                style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                            ),
                            trailing: const Icon(Icons.favorite,color:Colors.red),
                            subtitle: Column(
                                children:[
                                  SizedBox(height:10),
                                  Text('IndiraNagar Phase 01 near Metro station', style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400)),
                                ]),
                            selected: true,
                            onTap: () {
                              setState(() {

                              });
                            },
                          ),
Divider(thickness:1,color:Colors.blue),
                          SizedBox(height:20),

                          ListTile(
                            leading: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 44,
                                  minHeight: 54,
                                  maxWidth: 64,
                                  maxHeight: 84,
                                ),
                                child: Image.network("https://i.pinimg.com/originals/69/fa/88/69fa88b4b00d3e495e2086e5a062d853.png", fit: BoxFit.fill)),
                            title: const Text(
                                'More',
                                textScaleFactor: 1.5,
                                style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                            ),
                            trailing: const Icon(Icons.favorite,color:Colors.red),
                            subtitle: Column(
                                children:[
                                  SizedBox(height:10),
                                  Text('IndiraNagar Phase 01 near Metro station', style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400)),
                                ]),
                            selected: true,
                            onTap: () {
                              setState(() {

                              });
                            },
                          ),

                          Divider(thickness:1,color:Colors.blue),
                          SizedBox(height:20),

                        ],
                      ),
                      margin: EdgeInsets.only(top: 0),
                    )]),
              SizedBox(height:20),
              SizedBox(height:10),


            ])
    );
  }
}


