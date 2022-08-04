import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:occal/products_list_item.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

import 'FavScreen.dart';

import 'GroceryList.dart';
import 'GroceryListMilk.dart';
import 'LoginScreen.dart';
import 'MyCart.dart';
import 'MyOrderScreen.dart';
import 'WelcomeScreen.dart';




class ListProductMilk extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ListProductMilk> {
  bool success = false;
  int _selectedIndex = 0;
  final List _pages = [
    ListProductMilk(),
    MyOrderScreen(),
    MyCart(),
    LoginScreen(),
    FavScreen()


  ];
  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:

      Container(
        width:400,
        padding:EdgeInsets.fromLTRB(0, 5, 7, 2),



        child:ListView(
          children:  <Widget>[

            GroceryListMilk(
              name: "Nandhini Milk",
              quantity: "1 Liter",
              originalPrice: 60,
              offerPrice: 50,

              imageUrl:
              "https://www.kmfnandini.coop/sites/default/files/styles/product_popup_600x500/public/products/Homogenised%20Toned%20Milk_500ml_0.jpg?itok=pmg22yXC",
            ),
            GroceryListMilk(
              name: "Heritage Milk",
              quantity: "1 Liter",
              originalPrice: 40,
              offerPrice:35 ,

              imageUrl:
              "https://www.heritagefoods.in/static/images/detailslider/mega/slim-milk.jpg",
            ),
            GroceryListMilk(
              name: "Dodla Milk",
              quantity:"500 Ml" ,
              originalPrice: 25,
              offerPrice: 20,
              imageUrl:
              "https://4.imimg.com/data4/DY/CW/MY-2141208/toned-milk-250x250.jpg",
            ),
            GroceryListMilk(
              name: "Arokya Milk",
              quantity:"500 Ml" ,
              originalPrice: 60,
              offerPrice: 68,
              imageUrl:
              "https://nearbyshop.in/images/thumbnails/500/500/detailed/17/image_17.png",
            ),
          ],
        ),

      ),


    );
  }
}