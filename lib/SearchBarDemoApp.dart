import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchBarDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body:  SearchBarDemoHome());
  }
}
class SearchBarDemoHome extends StatefulWidget {
  @override
  _SearchBarDemoHomeState createState() => new _SearchBarDemoHomeState();
}

class _SearchBarDemoHomeState extends State<SearchBarDemoHome> {
  late SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  AppBar buildAppBar(BuildContext context) {
    return
      AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
        backgroundColor: HexColor("#9188e5"),
        title: new Text('Search For Groceries & More',style:TextStyle(fontWeight: FontWeight.w500,fontSize:15,color:Colors.white)),
        actions: [searchBar.getSearchAction(context)]);
  }

  void onSubmitted(String value) {
    setState(() => _scaffoldKey.currentState!
        .showSnackBar(new SnackBar(content: new Text('You wrote $value!'))));
  }

  _SearchBarDemoHomeState() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted,
        onCleared: () {
          print("cleared");
        },
        onClosed: () {
          print("closed");
        });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: searchBar.build(context),
      key: _scaffoldKey,
      body: SingleChildScrollView(
          child:
              Column(
              children:[
SizedBox(height:30),
                Text("   Most Searched And Bought",style:TextStyle(fontSize:17,fontWeight: FontWeight.w600)),
                SizedBox(height:30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        width:100,
                        height:30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: Colors.black12,
                                width: 1.0
                            )
                        ),

                        child: Text("      Milk"),
                      ),
                      SizedBox(width:30),
                      Container(
                        width:100,
                        height:30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: Colors.black12,
                                width: 1.0
                            )
                        ),

                        child: Text("      Eggs"),
                      ),
                      SizedBox(width:30),
                      Container(
                        width:100,
                        height:30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: Colors.black12,
                                width: 1.0
                            )
                        ),

                        child: Text("      Curd"),
                      ),
                    ]),
                SizedBox(height:30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        width:100,
                        height:30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: Colors.black12,
                                width: 1.0
                            )
                        ),

                        child: Text("      Paneer"),
                      ),
                      SizedBox(width:30),
                      Container(
                        width:100,
                        height:30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: Colors.black12,
                                width: 1.0
                            )
                        ),

                        child: Text("      Ice Cream"),
                      ),
                      SizedBox(width:30),
                      Container(
                        width:100,
                        height:30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: Colors.black12,
                                width: 1.0
                            )
                        ),

                        child: Text("      Mangoes"),
                      ),
                    ]),
                SizedBox(height:30),
                Text("   Popular Brands",style:TextStyle(fontSize:17,fontWeight: FontWeight.w600)),
                SizedBox(height:30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment(0.0,0.9),

                          ),
                          width:80, //stretches to maximum width
                          height: 70.0,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image:NetworkImage('https://www.medianews4u.com/wp-content/uploads/2022/04/Savlon-Swasth-India-Mission-publishes-its-first-attitudinal-study-on-hygiene-habits-in-India.jpg'),
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(width:30),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment(0.0,0.9),

                          ),
                          width:80, //stretches to maximum width
                          height: 70.0,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image:NetworkImage('http://assets.stickpng.com/thumbs/5ecaa0c5aa31fc00045d6782.png'),
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(width:30),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment(0.0,0.9),

                          ),
                          width:80, //stretches to maximum width
                          height: 70.0,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa7lhsTTpqUnlT2OPY67YyVSyxK5lI5EQXhDPOnXWzJjWk2eaGFpn7yaMj4urAMemUtU8&usqp=CAU'),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ]),
                SizedBox(height:30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment(0.0,0.9),

                          ),
                          width:80, //stretches to maximum width
                          height: 70.0,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image:NetworkImage('https://cdn.shopify.com/s/files/1/0014/3514/0183/files/1200x628Lk_5b9dfa83-0545-4c07-b814-3a6ca344eb97.jpg?v=1630995515'),
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(width:30),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment(0.0,0.9),

                          ),
                          width:80, //stretches to maximum width
                          height: 70.0,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvwkZCIudXQ6Y5Fpsqa_Yqv1ovXUZeHFN5lA6KCKZsdKSsgOx4BcpRYuIrPJGcKk_PwHE&usqp=CAU'),
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(width:30),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment(0.0,0.9),

                          ),
                          width:90, //stretches to maximum width
                          height: 70.0,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image:NetworkImage('https://static.wikia.nocookie.net/logopedia/images/d/de/Sofylogo.png/revision/latest?cb=20201027022721'),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ]),
                SizedBox(height:30),
                Text("   Top Picks",style:TextStyle(fontSize:17,fontWeight: FontWeight.w600)),
                SizedBox(height:30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Column(
                        children:[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                            image:NetworkImage('https://5.imimg.com/data5/JL/HX/MY-10667857/nandini-homogenized-toned-milk-500x500.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                  width:80, //stretches to maximum width
                  height: 70.0,
                          margin: EdgeInsets.all(10.0),

                      ),




                          Text("   Milk"),
                      ]),

                      SizedBox(width:30),
                      Column(
                          children:[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                  image:NetworkImage('https://m.media-amazon.com/images/I/51IgR2yRK2L._SX679_.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width:80, //stretches to maximum width
                              height: 70.0,
                              margin: EdgeInsets.all(10.0),

                            ),




                            Text(" Cosmetics"),
                          ]),
                      SizedBox(width:30),
                      Column(
                          children:[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                  image:NetworkImage('https://m.media-amazon.com/images/I/914dPgoGeNL._SX522_PIbundle-2,TopRight,0,0_AA522SH20_.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width:80, //stretches to maximum width
                              height: 70.0,
                              margin: EdgeInsets.all(10.0),

                            ),




                            Text("  Juices"),
                          ]),
                    ]),
                SizedBox(height:30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Column(
                          children:[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                  image:NetworkImage('https://www.simpleskincare.com/sk-eu/content/dam/brands/lifebuoy/india/31405982-lifebuoy-hand-sanitizer-50ml.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width:80, //stretches to maximum width
                              height: 70.0,
                              margin: EdgeInsets.all(10.0),

                            ),




                            Text("   Sanitizer"),
                          ]),

                      SizedBox(width:30),
                      Column(
                          children:[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                  image:NetworkImage('https://www.dove.com/content/dam/unilever/dove/philippines/pack_shot/front/skin_cleansing/skin_cleansing/dove_bar_reg_whitesea48x100g/TAB-514774.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width:80, //stretches to maximum width
                              height: 70.0,
                              margin: EdgeInsets.all(10.0),

                            ),




                            Text(" Soap"),
                          ]),
                      SizedBox(width:30),
                      Column(
                          children:[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                  image:NetworkImage('https://www.bigbasket.com/media/uploads/p/l/40187132_1-eggee-brown-eggs.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width:80, //stretches to maximum width
                              height: 70.0,
                              margin: EdgeInsets.all(10.0),

                            ),




                            Text("  Eggs"),
                          ]),
                    ])
        ])
      ),
    );
  }
}