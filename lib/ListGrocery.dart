import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:occal/products_list_item.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

import 'FavScreen.dart';

import 'GroceryList.dart';
import 'GroceryList1.dart';
import 'LoginScreen.dart';
import 'MyCart.dart';
import 'MyOrderScreen.dart';
import 'WelcomeScreen.dart';




class ListGrocery extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ListGrocery> {
  bool success = false;
  int _selectedIndex = 0;
  final List _pages = [
    ListGrocery(),
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
              child: Image.network("https://rukminim1.flixcart.com/flap/1400/1400/image/15cbd99e6fcb6fc1.jpg?q=50"),
              fit: BoxFit.contain,
            ),
            GroceryList1(
              name: "Fortune atta",
              quantity: "1 kg",
              originalPrice: 50,
              offerPrice: 45,

              imageUrl:
              "https://www.bigbasket.com/media/uploads/p/xxl/40120174-2_5-fortune-chakki-fresh-atta-100-atta-0-maida.jpg",
            ),
            GroceryList1(
              name: "Roasted Rava",
              quantity: "500 Gms",
              originalPrice: 30,
              offerPrice:28 ,

              imageUrl:
              "https://www.bigbasket.com/media/uploads/p/xxl/40169163_5-elite-roasted-rava.jpg",
            ),
            GroceryList1(
              name: "Maida",
              quantity:"500 Gms " ,
              originalPrice: 37,
              offerPrice: 28,
              imageUrl:
              "https://www.bigbasket.com/media/uploads/p/xxl/40194163_2-fortune-maida.jpg",
            ),
            GroceryList1(
              name: "Cashew",
              quantity:"1 Kg" ,
              originalPrice: 900,
              offerPrice: 820,
              imageUrl:
              "https://ajwadryfruits.in/wp-content/uploads/2020/08/cashews-cover-2.jpg",
            ),
          ],
        ),

      ),


    );
  }
}