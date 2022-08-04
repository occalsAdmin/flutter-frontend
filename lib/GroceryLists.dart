import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:occal/ListProduct.dart';

import 'package:vertical_tabs/vertical_tabs.dart';

import 'ListGrocery.dart';
import 'ListGroceryflours.dart';
import 'ListProductMilk.dart';




class ItemData {
  final String itemName;
  final String itemPrice;
  final String image;
  int counter = 0;
  bool isAdded = false;
  ItemData({required this.itemName, required this.itemPrice, required this.image});
}


class GroceryLists extends StatefulWidget {
  int counter = 0;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<GroceryLists> {
  bool success = false;
  int _selectedIndex = 0;
  String? selectedValue;
  String? selectedValues;
  String? selectedValuess;
  late Future<List<ItemData>> _future;

  List<String> itemss = [
    '500 Gms',
    '1 kg',


  ];
  List<String> items = [
    '500 ml',
    '1 Liter',



  ];
  int _counter = 0;

  void _incrementCount() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCount() {
    setState(() => _counter--);
  }
  final List _pages = [
    ListGrocery(),
    ListGroceryflours(),
    ListGrocery(),
    ListGrocery(),

  ];

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }
  removeProduct() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }
  _addProduct() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Grocery"),
        actions: <Widget>[
          /*  IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
              //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartPage()));
              },
            ),*/
          IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
              },
              icon: Icon(Icons.search,)),
        ],
      ),
      body:

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(
                icon: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        color: Colors.purple,
                        image: DecorationImage(
                          image:NetworkImage('https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/k%2FPhoto%2FSeries%2F2020-07-South-Indian-Chritra-Agrawal%2FPantry%20%2FSouth_Indian_grocery_items'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      width:40, //stretches to maximum width
                      height:30,


                    ), Column(
                        children:[
                          Text('Top In'),
                          Text('Demand')])
                  ],
                ),
                selectedIcon:  Container(
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    color: Colors.purple,
                    image: DecorationImage(
                      image:NetworkImage('https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/k%2FPhoto%2FSeries%2F2020-07-South-Indian-Chritra-Agrawal%2FPantry%20%2FSouth_Indian_grocery_items'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  width:40, //stretches to maximum width
                  height:40,


                ),
                label: Column(
                  children:[
                    Text('Top In'),
                    Text('Demand')
                  ],
                ),
              ),
              NavigationRailDestination(
                icon: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                          image:NetworkImage('https://static.toiimg.com/photo/70364232.cms'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      width:40, //stretches to maximum width
                      height: 30.0,
                      margin: EdgeInsets.all(10.0),

                    ), Text('Flours')],
                ),
                selectedIcon: Container(
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    color: Colors.grey,
                    image: DecorationImage(
                      image:NetworkImage('https://static.toiimg.com/photo/70364232.cms'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width:40, //stretches to maximum width
                  height: 30.0,
                  margin: EdgeInsets.all(10.0),

                ),
                label: Text("Flours"),
              ),
              NavigationRailDestination(
                icon: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                          image:NetworkImage('https://www.mccainindia.com/assets/upload/product/1514373312_smiles-detail-img.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      width:40, //stretches to maximum width
                      height: 30.0,
                      margin: EdgeInsets.all(10.0),

                    ), Text('Frozen')],
                ),
                selectedIcon: Container(
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    color: Colors.grey,
                    image: DecorationImage(
                      image:NetworkImage('https://www.mccainindia.com/assets/upload/product/1514373312_smiles-detail-img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width:40, //stretches to maximum width
                  height: 30.0,
                  margin: EdgeInsets.all(10.0),

                ),
                label: Text("Frozen"),
              ),

              NavigationRailDestination(
                icon: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                          image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTMsMJYcPiGZ84bA6yGh393lQ-O_6Qq57AoQ&usqp=CAU'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      width:40, //stretches to maximum width
                      height: 30.0,
                      margin: EdgeInsets.all(10.0),

                    ), Text('Oils')],
                ),
                selectedIcon: Container(
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    color: Colors.grey,
                    image: DecorationImage(
                      image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTMsMJYcPiGZ84bA6yGh393lQ-O_6Qq57AoQ&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width:40, //stretches to maximum width
                  height: 30.0,
                  margin: EdgeInsets.all(10.0),

                ),
                label: Text("Oils"),
              ),



            ],
          ),
          SizedBox(height:10),
          VerticalDivider(thickness:5, width: 1),

          // This is the main content.
          Container(
            width:330,
            padding: const EdgeInsets.only(
              left: 1.0,right:1.0,
            ),
            decoration: BoxDecoration(color: Colors.white),
            child: Container(
              padding: const EdgeInsets.only(top:2.0,right:2.0,bottom:2.0
              ),
              child:

              _pages.elementAt(_selectedIndex),

            ),
          ),
        ],
      ),

    );
  }
}