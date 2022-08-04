import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:occal/products_list_item.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

import 'FavScreen.dart';

import 'GroceryList.dart';
import 'LoginScreen.dart';
import 'MyCart.dart';
import 'MyOrderScreen.dart';
import 'WelcomeScreen.dart';




class ListProduct extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ListProduct> {
  bool success = false;
  int _selectedIndex = 0;
  final List _pages = [
    ListProduct(),
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
              FittedBox(
                child: Image.network("https://milklife.com/sites/default/files/styles/reskin_article_top_banner_image/public/field_main_image/Nutrition/2013/07/23/stave-off-lunchtime-hunger.jpg?itok=3FjrjRKs"),
                fit: BoxFit.contain,
              ),
              GroceryList(
                name: "Nandhini Milk",
quantity: "1 Liter",
                originalPrice: 60,
                offerPrice: 50,

                imageUrl:
                "https://www.kmfnandini.coop/sites/default/files/styles/product_popup_600x500/public/products/Homogenised%20Toned%20Milk_500ml_0.jpg?itok=pmg22yXC",
              ),
              GroceryList(
                name: "Eggs",
quantity: "12 Pieces",
                originalPrice: 120,
                offerPrice:100 ,

                imageUrl:
                "https://www.mayoclinichealthsystem.org/-/media/national-files/images/hometown-health/2021/eggs-in-a-wood-bowl.jpg",
              ),
              GroceryList(
                name: "Bread",
quantity:"20 Piececs" ,
                originalPrice: 45,
offerPrice: 35,
                imageUrl:
                "https://www.bigbasket.com/media/uploads/p/xxl/40169150_2-elite-milk-bread.jpg",
              ),
              GroceryList(
                name: "Paneer",
quantity:"1 Packet" ,
                originalPrice: 90,
offerPrice: 80,
                imageUrl:
                "https://www.bigbasket.com/media/uploads/p/xxl/40096747_7-amul-malai-fresh-paneer.jpg",
              ),
            ],
          ),

      ),


    );
  }
}