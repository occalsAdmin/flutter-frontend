

import 'package:emoji_feedback/emoji_feedback.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlng/latlng.dart';
import 'package:geocoder/geocoder.dart';

import 'EnterAddress.dart';
import 'GroceryListMilk.dart';
import 'OrderScreen1.dart';




class MyWishlistScreen extends StatefulWidget {
  @override
  _MapActivityState createState() => _MapActivityState();
}

class _MapActivityState extends State<MyWishlistScreen> {
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
                    "              My  Wishlist",
                    style:TextStyle(color:Colors.black)
                ),


              ])
      ),
      body:
          SingleChildScrollView(
         child: Container(

              color:HexColor("#F0FFFF"),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height:20),
          Text(
            "     My Wishlist",
            style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight:FontWeight.w400),
          ),
          SizedBox(height:20),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children:[
    Card(
      elevation: 5.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height:10),
         Padding(
              padding: const EdgeInsets.all(1.0),
              child:
              Row(
                  children:[
                    SizedBox(width:10),
                    new IconButton(
                        icon: Icon(Icons.favorite,color: Colors.red,),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),]),
            ),

          Container(
              child: Image.network(
                "https://www.kmfnandini.coop/sites/default/files/styles/product_popup_600x500/public/products/Homogenised%20Toned%20Milk_500ml_0.jpg?itok=pmg22yXC",
              ),
              height:80.0,
              width: 150
          ),
          SizedBox(
            height: 18.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Nandhini Milk",
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "1 Liter",
                  style: TextStyle(fontSize: 12.0, color: Colors.grey,fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "    \Rs 60",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12.0,
                        color: Colors.grey,

                      ),
                    ),
                    Text(
                      "    \Rs 50",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,

                      ),
                    ),


                  ],
                ),
                SizedBox(height:20),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => MyWishlistScreen()));
                  },
                  color: Colors.white,

                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Text(
                      "Add to Cart",
                      style:TextStyle(color:Theme.of(context).primaryColor)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Card(
      elevation: 5.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height:10),
         Padding(
              padding: const EdgeInsets.all(1.0),
              child:
              Row(
                  children:[
                    SizedBox(width:10),
                    new IconButton(
                        icon: Icon(Icons.favorite,color: Colors.red,),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),]),

          ),
          Container(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR6SNv2vpubnufI2UktGv1Zx0d4iufabMTPQ&usqp=CAU",
              ),
              height:80.0,
              width: 150
          ),
          SizedBox(
            height: 18.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Nandhini Goodlife",
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "1 Liter",
                  style: TextStyle(fontSize: 12.0, color: Colors.grey,fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "    \Rs 50",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12.0,
                        color: Colors.grey,

                      ),
                    ),
                    Text(
                      "    \Rs 45",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,

                      ),
                    ),

                  ],
                ),
                SizedBox(height:20),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => MyWishlistScreen()));
                  },
                  color: Colors.white,

                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Text(
                      "Add to Cart",
                      style:TextStyle(color:Theme.of(context).primaryColor)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
          ]),       SizedBox(height:10),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Card(
                  elevation: 5.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height:10),
                     Padding(
                          padding: const EdgeInsets.all(1.0),
                          child:
                          Row(
                              children:[
                                SizedBox(width:10),
                                new IconButton(
                                    icon: Icon(Icons.favorite,color: Colors.red,),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    }),]),

                      ),
                      Container(
                          child: Image.network(
                            "https://m.media-amazon.com/images/I/9138pfX5-fL._SX522_.jpg",
                          ),
                          height:80.0,
                          width: 150
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Ashirvad Atta",
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "1 Kg",
                              style: TextStyle(fontSize: 12.0, color: Colors.grey,fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "    \Rs 50",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12.0,
                                    color: Colors.grey,

                                  ),
                                ),
                                Text(
                                  "    \Rs 48",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,

                                  ),
                                ),


                              ],
                            ),
                            SizedBox(height:20),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => MyWishlistScreen()));
                              },
                              color: Colors.white,

                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4))),
                              child: Text(
                                  "Add to Cart",
                                  style:TextStyle(color:Theme.of(context).primaryColor)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height:10),
                     Padding(
                          padding: const EdgeInsets.all(1.0),
                          child:
                          Row(
                              children:[
                                SizedBox(width:10),
                                new IconButton(
                                    icon: Icon(Icons.favorite,color: Colors.red,),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    }),]),
                        ),

                      Container(
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq2e1Xqsqvl7Nz2Ze_kRCCWMWED_TVKPtK17IPVJD0IcVLmiG2_Pg_jFJ9BEaWNd6xHXU&usqp=CAU",
                          ),
                          height:80.0,
                          width: 150
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Maida",
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "1 kg",
                              style: TextStyle(fontSize: 12.0, color: Colors.grey,fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "    \Rs 40",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12.0,
                                    color: Colors.grey,

                                  ),
                                ),
                                Text(
                                  "    \Rs 30",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,

                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height:20),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => MyWishlistScreen()));
                              },
                              color: Colors.white,

                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4))),
                              child: Text(
                                  "Add to Cart",
                                  style:TextStyle(color:Theme.of(context).primaryColor)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
          SizedBox(height:10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Card(
                  elevation: 5.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height:10),
                     Padding(
                          padding: const EdgeInsets.all(1.0),
                          child:
                          Row(
                              children:[
                                SizedBox(width:10),
                                new IconButton(
                                    icon: Icon(Icons.favorite,color: Colors.red,),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    }),]),
                        ),

                      Container(
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHRkKvLdVDFNUzjQ6ugTV5M9iohlGFqKlKM_U9H0bCYVuNlC4XveQYssOQtoi6jBHl7b4&usqp=CAU",
                          ),
                          height:80.0,
                          width: 150
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Soya Sauce",
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "1 Liter",
                              style: TextStyle(fontSize: 12.0, color: Colors.grey,fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "    \Rs 60",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12.0,
                                    color: Colors.grey,

                                  ),
                                ),
                                Text(
                                  "    \Rs 50",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,

                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height:20),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => MyWishlistScreen()));
                              },
                              color: Colors.white,

                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4))),
                              child: Text(
                                  "Add to Cart",
                                  style:TextStyle(color:Theme.of(context).primaryColor)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height:10),
                     Padding(
                          padding: const EdgeInsets.all(1.0),
                          child:
                          Row(
                              children:[
                                SizedBox(width:10),
                                new IconButton(
                                    icon: Icon(Icons.favorite,color: Colors.red,),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    }),]),

                      ),
                      Container(
                          child: Image.network(
                            "https://www.bigbasket.com/media/uploads/p/l/148682_1-idhayam-oil-gingelly.jpg",
                          ),
                          height:80.0,
                          width: 150
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Gingerly Oil",
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "1 Liter",
                              style: TextStyle(fontSize: 12.0, color: Colors.grey,fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "    \Rs 160",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12.0,
                                    color: Colors.grey,

                                  ),
                                ),
                                Text(
                                  "    \Rs 150",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,

                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height:20),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => MyWishlistScreen()));
                              },
                              color: Colors.white,

                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Theme.of(context).primaryColor),borderRadius: BorderRadius.all(Radius.circular(4))),
                              child: Text(
                                  "Add to Cart",
                                  style:TextStyle(color:Theme.of(context).primaryColor)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ],
      ))),
    );

  }
}


