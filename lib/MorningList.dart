import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:occal/ListProduct.dart';

import 'package:vertical_tabs/vertical_tabs.dart';

import 'ListProductMilk.dart';




class ItemData {
  final String itemName;
  final String itemPrice;
  final String image;
  int counter = 0;
  bool isAdded = false;
  ItemData({required this.itemName, required this.itemPrice, required this.image});
}


class MorningList extends StatefulWidget {
  int counter = 0;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MorningList> {
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
  ListProduct(),
    ListProductMilk(),
    ListProduct(),
    ListProduct(),
    ListProduct(),
    ListProduct(),
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
          title: Text("Bread & Butter, Dairy"),
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
                                  image:NetworkImage('https://images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-eggs-1296x728-feature.jpg'),
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
    image:NetworkImage('https://images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-eggs-1296x728-feature.jpg'),
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
                                  image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyT1x20M6cl-amDI3zqr00L6qYzVVgxVptEVM-KiREpgxcov0fH3HoClSEsUrpo_riSO8&usqp=CAU'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              width:40, //stretches to maximum width
                              height: 30.0,
                              margin: EdgeInsets.all(10.0),

                            ), Text('Milk')],
                        ),
                        selectedIcon: Container(
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                              image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyT1x20M6cl-amDI3zqr00L6qYzVVgxVptEVM-KiREpgxcov0fH3HoClSEsUrpo_riSO8&usqp=CAU'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width:40, //stretches to maximum width
                          height: 30.0,
                          margin: EdgeInsets.all(10.0),

                        ),
                        label: Text("Milk"),
                      ),
                      NavigationRailDestination(
                        icon: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(
                                  image:NetworkImage('https://www.bigbasket.com/media/uploads/p/l/213246_1-nandini-curd.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              width:40, //stretches to maximum width
                              height: 30.0,
                              margin: EdgeInsets.all(10.0),

                            ), Text('Curd')],
                        ),
                        selectedIcon: Container(
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                              image:NetworkImage('https://www.bigbasket.com/media/uploads/p/l/213246_1-nandini-curd.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width:40, //stretches to maximum width
                          height: 30.0,
                          margin: EdgeInsets.all(10.0),

                        ),
                        label: Text("Curd"),
                      ),

                      NavigationRailDestination(
                        icon: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                               shape:BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(
                                  image:NetworkImage('https://www.bigbasket.com/media/uploads/p/xxl/270621_6-nandini-paneer.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              width:40, //stretches to maximum width
                              height: 30.0,
                              margin: EdgeInsets.all(10.0),

                            ), Text('Paneer')],
                        ),
                        selectedIcon: Container(
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                              image:NetworkImage('https://www.bigbasket.com/media/uploads/p/xxl/270621_6-nandini-paneer.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width:40, //stretches to maximum width
                          height: 30.0,
                          margin: EdgeInsets.all(10.0),

                        ),
                        label: Text("Paneer"),
                      ),

                      NavigationRailDestination(
                        icon: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(
                                  image:NetworkImage('https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              width:40, //stretches to maximum width
                              height: 30.0,
                              margin: EdgeInsets.all(10.0),

                            ), Text('Eggs')],
                        ),
                        selectedIcon: Container(
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                              image:NetworkImage('https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          width:40, //stretches to maximum width
                          height: 30.0,
                          margin: EdgeInsets.all(10.0),

                        ),
                        label: Text("Eggs"),
                      ),
                      NavigationRailDestination(
                          icon: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape:BoxShape.circle,
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image:NetworkImage('https://img3.krishijagran.com/media/1958/nandini-cheese.png?width=1080&upscale=false'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                width:40, //stretches to maximum width
                                height: 30.0,
                                margin: EdgeInsets.all(10.0),

                              ),  Column(
                                  children:[
                                    Text("Cheese"),
                                    Text("Butter"),
                                  ])],
                          ),
                          selectedIcon: Container(
                            decoration: BoxDecoration(
                              shape:BoxShape.circle,
                              color: Colors.grey,
                              image: DecorationImage(
                                image:NetworkImage('https://img3.krishijagran.com/media/1958/nandini-cheese.png?width=1080&upscale=false'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            width:44, //stretches to maximum width
                            height: 30.0,
                            margin: EdgeInsets.all(10.0),

                          ),
                          label: Column(
                              children:[
                                Text("Cheese"),
                                Text("Butter"),
                              ])

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