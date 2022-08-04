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




class ListGroceryflours extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ListGroceryflours> {
  bool success = false;
  int _selectedIndex = 0;
  final List _pages = [
    ListGroceryflours(),
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
              name: "Besan",
              quantity: "1 kg",
              originalPrice: 60,
              offerPrice: 50,

              imageUrl:
              "https://www.jiomart.com/images/product/600x600/492571102/good-life-fine-besan-1-kg-product-images-o492571102-p591196597-0-202204261917.jpg",
            ),
            GroceryListMilk(
              name: "Ragi",
              quantity: "1 Kg",
              originalPrice: 50,
              offerPrice:35 ,

              imageUrl:
              "https://www.luluhypermarket.com/cdn-cgi/image/f=auto/medias/930241-001.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w0NDEwMzZ8aW1hZ2UvanBlZ3xpbWFnZXMvaDVmL2hhNS85MTIyMTI4MDM1ODcwLmpwZ3w0MDFkNDRjZTRlYzczMmFmYjZhYzJiMGE4YzZhYzc1ZmM4ZmE4ZGYxMmFlNzJiOWExNDhmYTExYTU3NWI0YzI0",
            ),
            GroceryListMilk(
              name: "Atta",
              quantity:"1 kg" ,
              originalPrice: 50,
              offerPrice: 40,
              imageUrl:
              "https://www.bigbasket.com/media/uploads/p/l/255505-2_4-pillsbury-atta-multigrain.jpg",
            ),
            GroceryListMilk(
              name: "Maida",
              quantity:"500 gms" ,
              originalPrice: 30,
              offerPrice: 25,
              imageUrl:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLKRmXJHE8aFdBvjSkyYVKD6DO9aURKZy6wA&usqp=CAU",
            ),
          ],
        ),

      ),


    );
  }
}