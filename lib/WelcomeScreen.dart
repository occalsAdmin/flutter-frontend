import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/foundation.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlng/latlng.dart';

//import 'AboutScreen.dart';

import 'GroceryLists.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';
///import 'MyCart.dart';
//import 'MyOrderScreen.dart';
//import 'Profile.dart';
//import 'SupportScreen.dart';
//import 'TodaysScreen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


import 'MorningList.dart';
import 'MyCart.dart';
import 'MyOrderScreen.dart';

import 'ProfileScreen.dart';
import 'SearchBarDemoApp.dart';


class WelcomeScreen  extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<WelcomeScreen>with SingleTickerProviderStateMixin {





  int _selectedIndex = 0;
  final _inactiveColor = Colors.black;
  final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of a first screen
  var myMenuItems = <String>[
    'Logout',

  ];
  late AnimationController _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  final iconList = [
    HomeScreen(),
    // MyOrderScreen(),
    //  MyCart(),
    //TodaysScreen(),
  ];
  void onSelect(item) {
    switch (item) {
      case 'Logout':
        Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => LoginScreen()));
        break;
      case 'Profile':
        print('Profile clicked');
        break;
      case 'Setting':
        print('Setting clicked');
        break;
    }
  }
  final List<String> imageList1 = [
    'https://cdn.shopify.com/s/files/1/0047/9730/0847/files/nurserylive-app-home-page-banner-plants-v3_9a4542b8-e6b2-4c88-8c5a-0dc0993fac5f_670x400.jpg?v=1636743230',
    'https://thumbs.dreamstime.com/b/special-offer-price-tag-sign-paper-against-rustic-red-painted-barn-wood-55863934.jpg',
    'https://rukminim1.flixcart.com/flap/960/960/image/ed04b09381eec3f9.jpg?q=75',
    'https://img.freepik.com/free-vector/big-sale-background-with-offer_23-2148902856.jpg?w=360'];
  final List<String> imageList = [
    'assets/Banner01.png',
    'assets/Banner 02.png',
    'assets/Banner 03.png'

  ];
  final List<String> imageList2 = [
    'https://www.laundrokart.com/images/offerpage/offer3.png',
    'https://cdn.grabon.in/gograbon/images/web-images/uploads/1618566499779/medicines-offers.jpg',
    'https://png.pngtree.com/png-clipart/20210314/original/pngtree-spring-flower-promotion-advertisement-png-image_6080890.jpg',
   ];
  late LatLng _center ;
  late Position currentLocation;
  @override
  void initState() {
    super.initState();
    /*final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor:Colors.greenAccent,
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);*/
    getUserLocation();
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
          () => _animationController.forward(),
    );
  }
  Future<Position> locateUser() async {
    return Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    });
    print('center $_center');
  }
  int _currentIndex = 0;
  final List _pages = [
    WelcomeScreen(),
    MyOrderScreen(),
    MyCart(),
    LoginScreen()


  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
      body:

      Container(
        padding: const EdgeInsets.only(left:0.0,right: 0.0,top:0.6,bottom:0.0),
        child: Center(
          child:

          _getPage(currentPage),
        ),
      ),
      //

    );

  }



  _getPage(int page) {
    switch (page) {
      case 0:
        return
          SingleChildScrollView(

              child: Column(

                children: <Widget>[
                  SizedBox(height:50),
                  Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children:[
SizedBox(width:10),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: new Image.asset(
                            'assets/Group 25.png',
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),

                      ]),
                  SizedBox(height:20),
                  Row(
              mainAxisAlignment:MainAxisAlignment.start,
                  children:[
                    
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                        },
                        icon:ImageIcon(
                          AssetImage("assets/loca.png"),
                          color:Theme.of(context).primaryColor,
                        ),
                    ),
                    SizedBox(width:1),

Column(

  children:[
    Row(
        children:[
                    Text("Carmelram ",
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Colors.black),
                    ),
          IconButton(
              onPressed: () {
               // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
              },
              icon: Icon(Icons.arrow_drop_down,color:Theme.of(context).primaryColor,size:30)),
                    ]),
                    SizedBox(height:1),
                    Text("Near Railway Cross  ",
                      style: TextStyle(fontWeight: FontWeight.w400,fontSize:15,color:Colors.black),
                    ),
                    ]),
                    SizedBox(width:140),
                  /*  IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                        },
                        icon: Icon(Icons.person,color:Theme.of(context).primaryColor,size:40)),*/

                  ]),
                  SizedBox(height:20),
              Container(
                  height:50,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),

                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
color:HexColor("#F0FFFF") ,
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)
                    ),
                  ),
              child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:20),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                    },
                    icon: ImageIcon(
                      AssetImage("assets/search.png"),
                      color: Theme.of(context).primaryColor,
                    ),),
              SizedBox(width:0),
           Flexible(

                child: TextField(
                    textAlign: TextAlign.left,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: HexColor("#F0FFFF"),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      ),
                      hintText: 'Search Products.............',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(10),

                        width: 18,
                      )
                  ),
                ),
              )])),
                  Container(
                    height:220,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18.0),
                          topRight: Radius.circular(18.0),
                          bottomLeft:Radius.circular(18.0),
                          bottomRight:Radius.circular(18.0),
                        ),
                    ),
                    child: Swiper(
                      pagination: SwiperPagination(),
                      itemCount: imageList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imageList[index],
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                  ),
                  SizedBox(height:20),


                     Align(
                         alignment: Alignment.topLeft,
                            child:RichText(
                                text: TextSpan(
                                    children: [



                                      TextSpan(
                                        text: "   Morning Needs",
                                        style: TextStyle(
                                          fontSize:20,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w800,

                                        ),
                                      )
                                    ]
                                ))),

              SizedBox(height:10),

              Column(
                  children:[
              Container(
              margin: EdgeInsets.symmetric(vertical:0.0),
              height: 150.0,
              child:
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:[
                    Column(
                        children:[

                              GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MorningList()));
                                  },

                                  child:  Container(
                                      margin:EdgeInsets.fromLTRB(10, 20, 10, 10),
                                      width: 70, //stretches to maximum width
                                      height: 70.0,

                                      decoration: BoxDecoration(
                                          color:HexColor("#FFF5EE"),
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                     
                                        image: DecorationImage(
                                          image: AssetImage('assets/m1.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ))
                              ),
                          Text(
                            'Dairy Eggs &',
                            style: TextStyle(
                              //backgroundColor: Colors.white,
                              fontSize: 16.0,
                              fontWeight:FontWeight.w500,
                              color:Colors.black,
                            ),
                          ),
                          Text(
                            ' Breads',
                            style: TextStyle(
                              //backgroundColor: Colors.white,
                              fontSize: 16.0,
                              fontWeight:FontWeight.w500,
                              color:Colors.black,
                            ),
                          ),
                        ]),


                    Column(
                        children:[

                              GestureDetector(
                                  onTap: (){
                                   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MorningListVeg()));
                                  },

                                  child:
                                  Container(
                                      margin:EdgeInsets.fromLTRB(10, 20, 10, 10),
                                      width: 70, //stretches to maximum width
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                        color: HexColor("#FFF5EE"),
                                        image: DecorationImage(
                                          image: AssetImage('assets/m2.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ))),
                          Text(
                            'Fresh',
                            style: TextStyle(
                              //backgroundColor: Colors.white,
                              fontSize: 16.0,
                              fontWeight:FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Vegtables',
                            style: TextStyle(
                              //backgroundColor: Colors.white,
                              fontSize: 16.0,
                              fontWeight:FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),]),

                    Column(
                        children:[

                              GestureDetector(
                                  onTap: (){
                                   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MorningListBatter()));
                                  },

                                  child:
                                  Container(
                                      margin:EdgeInsets.fromLTRB(10, 20, 10, 10),
                                      width: 70, //stretches to maximum width
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                        color: HexColor("#FFF5EE"),
                                        image: DecorationImage(
                                          image: AssetImage('assets/m3.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ))),
                          Text(
                            'Fresh',
                            style: TextStyle(
                              //backgroundColor: Colors.white,
                              fontSize: 16.0,
                              fontWeight:FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Fruits',
                            style: TextStyle(
                              //backgroundColor: Colors.white,
                              fontSize: 16.0,
                              fontWeight:FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ]),
               Column(
                   children:[

                     GestureDetector(
                         onTap: (){
                           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MorningListEggs()));
                         },

                         child:  Container(
                             margin:EdgeInsets.fromLTRB(10, 20, 10, 10),
                             width: 70, //stretches to maximum width
                             height: 70.0,
                             decoration: BoxDecoration(

                               borderRadius: BorderRadius.circular(10),
                               shape: BoxShape.rectangle,
                               color: HexColor("#FFF5EE"),
                               image: DecorationImage(
                                 image: AssetImage('assets/m4.png'),
                                 fit: BoxFit.fill,
                               ),
                             ))),

                     Text(
                       'Coconut',
                       style: TextStyle(
                         //backgroundColor: Colors.white,
                         fontSize: 16.0,
                         fontWeight:FontWeight.w500,
                         color:Colors.black,
                       ),
                     ),

                   ]),

                  ]))]),

                  SizedBox(height:30),
              Container(

                height:650,
                  margin: EdgeInsets.symmetric(vertical:0.0),
                  padding: EdgeInsets.fromLTRB(10,10,10,21),
                  decoration: new BoxDecoration(
                      color:HexColor("#add8e6"),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)
                      )
                  ),
                  child:Column(
                    children:[
                      SizedBox(height:20),
                      Container(
                      alignment: Alignment.topLeft,
                     child: Padding(
                          padding: const EdgeInsets.only(left:5,bottom:10),

              child:RichText(

              text: TextSpan(
              children: [



    TextSpan(
    text: "Shop By Subscriptions",
    style: TextStyle(
    fontSize:18,
    color: Colors.black87,
    fontWeight: FontWeight.w700,

    ),
    ),

    ]
    )))),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[
                            Column(
                                children:[

                                  GestureDetector(
                                      onTap: (){
                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MorningList()));
                                      },

                                      child:
                                          Container(
                                          margin:EdgeInsets.fromLTRB(1, 2, 10, 10),
                                          width: 170, //stretches to maximum width
                                          height: 260.0,

                                          decoration: BoxDecoration(
                                            borderRadius: new BorderRadius.only(
                                                topLeft: const Radius.circular(8.0),
                                                topRight: const Radius.circular(8.0),
                                                bottomLeft: Radius.circular(8.0),
                                                bottomRight: Radius.circular(8.0)
                                            ),

                                            color: Colors.white,

                                            image: DecorationImage(
                                              image: AssetImage('assets/m7.png'),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        child:
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children:[
                                              SizedBox(height:210),
                                        Text(
                                        'Dairy Eggs &',
                                        style: TextStyle(
                                          //backgroundColor: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight:FontWeight.w700,
                                          color:Colors.black,
                                        ),
                                      ),
            Text(
              ' Breads',
              style: TextStyle(
                //backgroundColor: Colors.white,
                fontSize: 14.0,
                fontWeight:FontWeight.w700,
                color:Colors.black,
              ),
            ),
                                      ])
                                  ),

                               ),

]),
                            Column(
                                children:[

                                  GestureDetector(
                                      onTap: (){
                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MorningListVeg()));
                                      },

                                      child:
                                      Container(
                                          margin:EdgeInsets.fromLTRB(1, 2, 10, 10),
                                          width: 170, //stretches to maximum width
                                          height: 260.0,
                                          decoration: BoxDecoration(
                                            borderRadius: new BorderRadius.only(
                                                topLeft: const Radius.circular(8.0),
                                                topRight: const Radius.circular(8.0),
                                                bottomLeft: Radius.circular(8.0),
                                                bottomRight: Radius.circular(8.0)
                                            ),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image:AssetImage('assets/m6.png'),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
    child:
    Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children:[
      SizedBox(height:210),
    Text(
    'Fresh',
    style: TextStyle(
    //backgroundColor: Colors.white,
    fontSize: 14.0,
    fontWeight:FontWeight.w700,
    color:Colors.black,
    ),
    ),
    Text(
    ' Vegtables',
    style: TextStyle(
    //backgroundColor: Colors.white,
    fontSize: 14.0,
    fontWeight:FontWeight.w700,
    color:Colors.black,
    ),
    ),
    ])
                                      )),
                               ]),
]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[
                            Column(
                                
                                children:[

                                  GestureDetector(
                                      onTap: (){
                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MorningListBatter()));
                                      },

                                      child:
                                      Container(
                                          margin:EdgeInsets.fromLTRB(0, 2, 10, 10),
                                          width: 170, //stretches to maximum width
                                          height: 260.0,
                                          decoration: BoxDecoration(
                                            borderRadius: new BorderRadius.only(
                                                topLeft: const Radius.circular(8.0),
                                                topRight: const Radius.circular(8.0),
                                                bottomLeft: Radius.circular(8.0),
                                                bottomRight: Radius.circular(8.0)
                                            ),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: AssetImage('assets/m8.png'),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                      child:
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            SizedBox(height:210),
                                            Text(
                                              'Fresh',
                                              style: TextStyle(
                                                //backgroundColor: Colors.white,
                                                fontSize: 14.0,
                                                fontWeight:FontWeight.w700,
                                                color:Colors.black,
                                              ),
                                            ),
                                            Text(
                                              ' Fruits',
                                              style: TextStyle(
                                                //backgroundColor: Colors.white,
                                                fontSize: 14.0,
                                                fontWeight:FontWeight.w700,
                                                color:Colors.black,
                                              ),
                                            ),
                                          ])
                                  ),
                                  )
                                ]),
                            Column(
                                children:[

                                  GestureDetector(
                                      onTap: (){
                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MorningListEggs()));
                                      },

                                      child:  Container(
                                          margin:EdgeInsets.fromLTRB(1, 2, 10, 10),
                                          width: 170, //stretches to maximum width
                                          height: 260.0,
                                          decoration: BoxDecoration(

                                            borderRadius: new BorderRadius.only(
                                                topLeft: const Radius.circular(8.0),
                                                topRight: const Radius.circular(8.0),
                                                bottomLeft: Radius.circular(8.0),
                                                bottomRight: Radius.circular(8.0)
                                            ),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: AssetImage('assets/m5.png'),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        child:
    Column(
      children:[
        SizedBox(height:210),
                                        Text(
                                          '      Coconut',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 14.0,
                                            fontWeight:FontWeight.w700,
                                            color:Colors.black,
                                          ),
                                        ),
      ]),
                                      )),



                                ]),

                          ])
              ])),
                  SizedBox(height:20),
              Container(
                  width: 500,
                  margin: EdgeInsets.all(10),
                  child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(
                          'assets/discount.png'),
                    ),
                  )),
                 /* Container(
                    margin: EdgeInsets.all(5),
                    child: CarouselSlider.builder(
                      itemCount: imageList2.length,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        height: 150,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        reverse: false,
                        aspectRatio: 5.0,
                      ),
                      itemBuilder: (context, i, id){
                        //for onTap to redirect to another screen
                        return GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.white,)
                            ),
                            //ClipRRect for image border radius
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                imageList2[i],
                                width: 400,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          onTap: (){
                            var url = imageList1[i];
                            print(url.toString());
                          },
                        );
                      },
                    ),
                  ),*/
            SizedBox(height:20),
            Container(
                height:850,
                margin: EdgeInsets.symmetric(vertical:0.0),
                padding: EdgeInsets.fromLTRB(10,10,10,21),
                decoration: new BoxDecoration(
                    color:HexColor("#F0FFFF"),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)
                    )
                ),
                child:Column(
                    children:[
                      SizedBox(height:10),
                      Container(
                alignment:Alignment.topLeft,
                     child: Padding(
                          padding: const EdgeInsets.only(left:5,bottom:10),

                          child:RichText(

                              text: TextSpan(
                                  children: [



                                    TextSpan(
                                      text: "Shop By Category",
                                      style: TextStyle(
                                        fontSize:20,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    ),

                                  ]
                              )))),



                  Column(
                      children:[
                  Container(
                    color: Colors.transparent,
                      margin:EdgeInsets.fromLTRB(10, 10, 10,10),
                      height: 163.0,
                      child:
                      ListView(

                        itemExtent: 126,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                      Column(
                      children:[
                      Expanded(
                      child:
                          GestureDetector(
                          onTap: (){
                           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorList()));
                  },

                        child:  Container(
                              margin: EdgeInsets.all(10.0),

                              width: 200, //stretches to maximum width
                              height: 350.0,

                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    topRight: const Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage('https://images2.minutemediacdn.com/image/upload/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/643188-gettyimages-153946385-ca1ccfaad9be44325afc434b305adc0d.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              )))),
                        Text(
                          'Veg & Fruits',
                          style: TextStyle(
                            //backgroundColor: Colors.white,
                            fontSize: 16.0,
                            fontWeight:FontWeight.w400,
                            color:Colors.black,
                          ),
                        ),
                        SizedBox(height:10),
]),
Column(
children:[
  Expanded(
    child:
    GestureDetector(
    onTap: (){
   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorListMeat()));
    },

    child:
    Container(
                              margin: EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment(0.0,0.9),

                              ),
                              width: double.infinity, //stretches to maximum width
                              height: 350.0,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    topRight: const Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage('https://media.istockphoto.com/photos/salmon-beef-pork-and-chicken-picture-id1010068522?k=20&m=1010068522&s=612x612&w=0&h=tSBjqJr7s9fwloS1y1qDfeTbw8iu2TEJAFXdQVzFBS0='),
                                  fit: BoxFit.cover,
                                ),
                              )))),
    Text(
    'Meat & Fish',
    style: TextStyle(
    //backgroundColor: Colors.white,
      fontSize: 16.0,
      fontWeight:FontWeight.w400,
    color: Colors.black,
    ),
    ),
  SizedBox(height:10),
]),

    Column(
    children:[
    Expanded(
    child:
    GestureDetector(
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GroceryLists()));
    },
    child:
                          Container(
                              margin: EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment(0.0,0.9),

                              ),
                              width: double.infinity, //stretches to maximum width
                              height: 370.0,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    topRight: const Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage('https://mydukaan.io/_next/static/images/groceries-image-fea7d03d965c5984eb2f149f87d374c9.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              )))),

    Text(
    'Grocery ',
    style: TextStyle(
    //backgroundColor: Colors.white,
      fontSize: 16.0,
      fontWeight:FontWeight.w400,
    color:Colors.black,
    ),
    ),

      SizedBox(height:10),
    ]),
                          ])
                  ),
                        Container(
                            color: Colors.transparent,
                            margin:EdgeInsets.fromLTRB(10, 20, 10,10),
                            height: 163.0,
                            child:
                            ListView(

                                itemExtent: 126,
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(
                                      children:[
                                        Expanded(
                                            child:
                                            GestureDetector(
                                                onTap: (){
                                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorList()));
                                                },

                                                child:  Container(
                                                    margin: EdgeInsets.all(10.0),

                                                    width: 200, //stretches to maximum width
                                                    height: 350.0,

                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                        image: NetworkImage('https://www.customerservice.ae/wp-content/uploads/2015/08/Cosmetics.jpg'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )))),
                                        Text(
                                          'Cosmetics',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight:FontWeight.w400,
                                            color:Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:10),
                                      ]),
                                  Column(
                                      children:[
                                        Expanded(
                                            child:
                                            GestureDetector(
                                                onTap: (){
                                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorListMeat()));
                                                },

                                                child:
                                                Container(
                                                    margin: EdgeInsets.all(10.0),
                                                    child: Align(
                                                      alignment: Alignment(0.0,0.9),

                                                    ),
                                                    width: double.infinity, //stretches to maximum width
                                                    height: 350.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                        image: NetworkImage('https://img.freepik.com/premium-photo/heap-clothes-washing-basket-standing-floor-near-washing-machine-light-bathroom_156881-4184.jpg?w=2000'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )))),
                                        Text(
                                          'Laundry Shop',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight:FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:10),
                                      ]),

                                  Column(
                                      children:[
                                        Expanded(
                                            child:
                                            GestureDetector(
                                                onTap: (){
                                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorListVeg()));
                                                },
                                                child:
                                                Container(
                                                    margin: EdgeInsets.all(10.0),
                                                    child: Align(
                                                      alignment: Alignment(0.0,0.9),

                                                    ),
                                                    width: double.infinity, //stretches to maximum width
                                                    height: 370.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                        image: NetworkImage('https://www.accenture.com/t20200916T091441Z__w__/id-en/_acnmedia/Accenture/Redesign-Assets/DotCom/Images/Global/Hero/14/Accenture-Dutch-Flower-Group-Hero-768x432.jpg'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )))),

                                        Text(
                                          'Flower Market ',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight:FontWeight.w400,
                                            color:Colors.black,
                                          ),
                                        ),

                                        SizedBox(height:10),
                                      ]),
                                ])
                        ),
                        Container(
                            color: Colors.transparent,
                            margin:EdgeInsets.fromLTRB(10, 20, 10,10),
                            height: 163.0,
                            child:
                            ListView(

                                itemExtent: 126,
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(
                                      children:[
                                        Expanded(
                                            child:
                                            GestureDetector(
                                                onTap: (){
                                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorList()));
                                                },

                                                child:  Container(
                                                    margin: EdgeInsets.all(10.0),

                                                    width: 200, //stretches to maximum width
                                                    height: 350.0,

                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                        image: NetworkImage('https://media.self.com/photos/61e9dae8808d098c8ccc3b58/1:1/w_768,c_limit/15-Bean-Soup-Vegetarian.jpg'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )))),
                                        Text(
                                          'Food',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight:FontWeight.w400,
                                            color:Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:10),
                                      ]),
                                  Column(
                                      children:[
                                        Expanded(
                                            child:
                                            GestureDetector(
                                                onTap: (){
                                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorListMeat()));
                                                },

                                                child:
                                                Container(
                                                    margin: EdgeInsets.all(10.0),
                                                    child: Align(
                                                      alignment: Alignment(0.0,0.9),

                                                    ),
                                                    width: double.infinity, //stretches to maximum width
                                                    height: 350.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm4iBw7bWz62ydfwIiadjGMOqneQVpmBQXyeAUtfL8UqrCVBUo8nmcyzZvcnG9jEZ2UKc&usqp=CAU'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )))),
                                        Text(
                                          'School Books',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight:FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:10),
                                      ]),

                                  Column(
                                      children:[
                                        Expanded(
                                            child:
                                            GestureDetector(
                                                onTap: (){
                                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorListVeg()));
                                                },
                                                child:
                                                Container(
                                                    margin: EdgeInsets.all(10.0),
                                                    child: Align(
                                                      alignment: Alignment(0.0,0.9),

                                                    ),
                                                    width: double.infinity, //stretches to maximum width
                                                    height: 370.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                        image: NetworkImage('https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-combo-packs-plants-plant-pack-for-healthy-home-office-16969206628492_512x512.jpg?v=1634226271'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )))),

                                        Text(
                                          'Nursery ',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight:FontWeight.w400,
                                            color:Colors.black,
                                          ),
                                        ),

                                        SizedBox(height:10),
                                      ]),
                                ])
                        ),
                        Container(
                            color: Colors.transparent,
                            margin:EdgeInsets.fromLTRB(10, 20, 10,10),
                            height: 163.0,
                            child:
                            ListView(

                                itemExtent: 126,
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(
                                      children:[
                                        Expanded(
                                            child:
                                            GestureDetector(
                                                onTap: (){
                                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorList()));
                                                },

                                                child:  Container(
                                                    margin: EdgeInsets.all(10.0),

                                                    width: 200, //stretches to maximum width
                                                    height: 350.0,

                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                        image: NetworkImage('https://gumlet.assettype.com/deshdoot%2F2022-01%2F7a45c0d8-f492-41dc-918c-7c9305cf9f4e%2Fcoconut_tree_5288844_960_720.webp?format=auto'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )))),
                                        Text(
                                          'Coconut',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight:FontWeight.w400,
                                            color:Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:10),
                                      ]),
                                  Column(
                                      children:[
                                        Expanded(
                                            child:
                                            GestureDetector(
                                                onTap: (){
                                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorListMeat()));
                                                },

                                                child:
                                                Container(
                                                    margin: EdgeInsets.all(10.0),
                                                    child: Align(
                                                      alignment: Alignment(0.0,0.9),

                                                    ),
                                                    width: double.infinity, //stretches to maximum width
                                                    height: 350.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                        image: NetworkImage('https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/qhfsd586ldhm808ahipa'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )))),
                                        Text(
                                          'Juice Corner',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight:FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:10),
                                      ]),

                                  Column(
                                      children:[
                                        Expanded(
                                            child:
                                            GestureDetector(
                                                onTap: (){
                                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VendorListVeg()));
                                                },
                                                child:
                                                Container(
                                                    margin: EdgeInsets.all(10.0),
                                                    child: Align(
                                                      alignment: Alignment(0.0,0.9),

                                                    ),
                                                    width: double.infinity, //stretches to maximum width
                                                    height: 370.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWZ2I5pgYifkrmfWfeqSkY03iHV0T2Gv1WQw&usqp=CAU'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )))),

                                        Text(
                                          'Medicines ',
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight:FontWeight.w400,
                                            color:Colors.black,
                                          ),
                                        ),

                                        SizedBox(height:10),
                                      ]),
                                ])
                        )
                      ]),

])),


                  Column(
                      children:[
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            height: 30.0,
                            child:
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[

                                  RichText(
                                      text: TextSpan(
                                          children: [

                                            TextSpan(
                                              text: "     Today's Deals",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,

                                              ),
                                            )
                                          ]
                                      )),
                                  SizedBox(width:110),

                                ])
                        ),
                        Wrap(
                            spacing:0, // to apply margin in the main axis of the wrap
                            runSpacing:0,

                                  children:[
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 0.0),
                            height: 190.0,
                            color: Colors.white,
                            child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    width: 110.0,


                                    child: new Stack(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(5.0),
                                          child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children:[
                                                Container(

                                                 height:160,
                                                  width:120,
                                                  decoration: BoxDecoration(
                                                    borderRadius: new BorderRadius.only(
                                                        topLeft: const Radius.circular(10.0),
                                                        topRight: const Radius.circular(10.0),
                                                        bottomLeft: Radius.circular(10.0),
                                                        bottomRight: Radius.circular(10.0)
                                                    ),
                                                    color: HexColor("#FFF5EE"),
                                                    image: DecorationImage(
                                                      image: AssetImage('assets/t1.png'),
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                child:
    Container(
    height:20,

    decoration: BoxDecoration(
   
    borderRadius: new BorderRadius.only(
    topLeft: const Radius.circular(10.0),
    topRight: const Radius.circular(10.0),
    bottomLeft: Radius.circular(10.0),
    bottomRight: Radius.circular(10.0)
    )),
                                               child:
                                               Column(
                                                children:[
                                     SizedBox(height:120),
                                                Text(
                                                  'Juices',
                                                  style: TextStyle(
                                                    //backgroundColor: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13.0,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                                Text(
                                                  "Upto 20%",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    //backgroundColor: Colors.white,
                                                    fontSize: 15.0,
                                                    color: HexColor("#202BC6"),
                                                  ),
                                                ),
    ]))
                                                )]),
                                        ),
                                      ],
                                    ),
                                  ),
    Container(
    width: 110.0,


    child: new Stack(
    children: <Widget>[
    Container(
    margin: EdgeInsets.all(8.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
    Container(

    height:160,
    width:120,
    decoration: BoxDecoration(
    borderRadius: new BorderRadius.only(
    topLeft: const Radius.circular(10.0),
    topRight: const Radius.circular(10.0),
    bottomLeft: Radius.circular(10.0),
    bottomRight: Radius.circular(10.0)
    ),
      color: HexColor("#FFF5EE"),
    image: DecorationImage(
    image: AssetImage('assets/t2.png'),
    fit: BoxFit.contain,
    ),
    ),
    child:
    Container(
   

    decoration: BoxDecoration(
    borderRadius: new BorderRadius.only(
    topLeft: const Radius.circular(10.0),
    topRight: const Radius.circular(10.0),
    bottomLeft: Radius.circular(10.0),
    bottomRight: Radius.circular(10.0)
    )),
    child:
    Column(
    children:[
    SizedBox(height:124),
    Text(
    'Nursery',
    style: TextStyle(
    //backgroundColor: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 13.0,
    color: Colors.green,
    ),
    ),
    Text(
    "Upto 35%",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    //backgroundColor: Colors.white,
    fontSize: 15.0,
    color: HexColor("#202BC6"),
    ),
    ),
    ]))
    )]),
    ),
    ],
    ),
    ),
                                  Container(
                                    width: 110.0,


                                    child: new Stack(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(8.0),
                                          child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children:[
                                                Container(

                                                    height:160,
                                                    width:120,
                                                    decoration: BoxDecoration(
                                                      borderRadius: new BorderRadius.only(
                                                          topLeft: const Radius.circular(10.0),
                                                          topRight: const Radius.circular(10.0),
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0)
                                                      ),
                                                      color: HexColor("#FFF5EE"),
                                                      image: DecorationImage(
                                                        image: AssetImage('assets/t3.png'),
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    child:
                                                    Container(
                                                        height:20,

                                                        decoration: BoxDecoration(
                                                            borderRadius: new BorderRadius.only(
                                                                topLeft: const Radius.circular(10.0),
                                                                topRight: const Radius.circular(10.0),
                                                                bottomLeft: Radius.circular(10.0),
                                                                bottomRight: Radius.circular(10.0)
                                                            )),
                                                        child:
                                                        Column(
                                                            children:[
                                                              SizedBox(height:124),
                                                              Text(
                                                                'Medicines',
                                                                style: TextStyle(
                                                                  //backgroundColor: Colors.white,
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 13.0,
                                                                  color: Colors.green,
                                                                ),
                                                              ),
                                                              Text(
                                                                "Upto 20%",
                                                                style: TextStyle(
                                                                  fontWeight: FontWeight.bold,
                                                                  //backgroundColor: Colors.white,
                                                                  fontSize: 15.0,
                                                                  color: HexColor("#202BC6"),
                                                                ),
                                                              ),
                                                            ]))
                                                )]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ])),

                                    Container(
                                        margin: EdgeInsets.symmetric(vertical: 0.0),
                                        height: 190.0,
                                        color: Colors.white,
                                        child:Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                width: 110.0,


                                                child: new Stack(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.all(8.0),
                                                      child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Container(

                                                                height:160,
                                                                width:120,
                                                                decoration: BoxDecoration(
                                                                    color: HexColor("#FFF5EE"),
                                                                  borderRadius: new BorderRadius.only(
                                                                      topLeft: const Radius.circular(10.0),
                                                                      topRight: const Radius.circular(10.0),
                                                                      bottomLeft: Radius.circular(10.0),
                                                                      bottomRight: Radius.circular(10.0)
                                                                  ),

                                                                  image: DecorationImage(
                                                                    image: AssetImage('assets/t4.png'),
                                                                    fit: BoxFit.contain,
                                                                  ),
                                                                ),
                                                                child:
                                                                Container(
                                                                    height:20,

                                                                    decoration: BoxDecoration(
                                                                        borderRadius: new BorderRadius.only(
                                                                            topLeft: const Radius.circular(10.0),
                                                                            topRight: const Radius.circular(10.0),
                                                                            bottomLeft: Radius.circular(10.0),
                                                                            bottomRight: Radius.circular(10.0)
                                                                        )),
                                                                    child:
                                                                    Column(
                                                                        children:[
                                                                          SizedBox(height:120),
                                                                          Text(
                                                                            'Books',
                                                                            style: TextStyle(
                                                                              //backgroundColor: Colors.white,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 13.0,
                                                                              color: Colors.green,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            "Upto 20%",
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              //backgroundColor: Colors.white,
                                                                              fontSize: 15.0,
                                                                              color: HexColor("#202BC6"),
                                                                            ),
                                                                          ),
                                                                        ]))
                                                            )]),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 110.0,


                                                child: new Stack(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.all(8.0),
                                                      child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Container(

                                                                height:160,
                                                                width:120,
                                                                decoration: BoxDecoration(
                                                                  borderRadius: new BorderRadius.only(
                                                                      topLeft: const Radius.circular(10.0),
                                                                      topRight: const Radius.circular(10.0),
                                                                      bottomLeft: Radius.circular(10.0),
                                                                      bottomRight: Radius.circular(10.0)
                                                                  ),
                                                                  color: HexColor("#FFF5EE"),
                                                                  image: DecorationImage(
                                                                    image: AssetImage('assets/t5.png'),
                                                                    fit: BoxFit.contain,
                                                                  ),
                                                                ),
                                                                child:
                                                                Container(


                                                                    decoration: BoxDecoration(
                                                                        borderRadius: new BorderRadius.only(
                                                                            topLeft: const Radius.circular(10.0),
                                                                            topRight: const Radius.circular(10.0),
                                                                            bottomLeft: Radius.circular(10.0),
                                                                            bottomRight: Radius.circular(10.0)
                                                                        )),
                                                                    child:
                                                                    Column(
                                                                        children:[
                                                                          SizedBox(height:124),
                                                                          Text(
                                                                            'Cosmetics',
                                                                            style: TextStyle(
                                                                              //backgroundColor: Colors.white,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 13.0,
                                                                              color: Colors.green,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            "Upto 35%",
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              //backgroundColor: Colors.white,
                                                                              fontSize: 15.0,
                                                                              color: HexColor("#202BC6"),
                                                                            ),
                                                                          ),
                                                                        ]))
                                                            )]),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 110.0,


                                                child: new Stack(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.all(8.0),
                                                      child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Container(

                                                                height:160,
                                                                width:120,
                                                                decoration: BoxDecoration(
                                                                  borderRadius: new BorderRadius.only(
                                                                      topLeft: const Radius.circular(10.0),
                                                                      topRight: const Radius.circular(10.0),
                                                                      bottomLeft: Radius.circular(10.0),
                                                                      bottomRight: Radius.circular(10.0)
                                                                  ),
                                                                  color: HexColor("#FFF5EE"),
                                                                  image: DecorationImage(
                                                                    image: AssetImage('assets/t6.png'),
                                                                    fit: BoxFit.contain,
                                                                  ),
                                                                ),
                                                                child:
                                                                Container(
                                                                    height:20,

                                                                    decoration: BoxDecoration(

                                                                        borderRadius: new BorderRadius.only(
                                                                            topLeft: const Radius.circular(10.0),
                                                                            topRight: const Radius.circular(10.0),
                                                                            bottomLeft: Radius.circular(10.0),
                                                                            bottomRight: Radius.circular(10.0)
                                                                        )),
                                                                    child:
                                                                    Column(
                                                                        children:[
                                                                          SizedBox(height:124),
                                                                          Text(
                                                                            'Grocery',
                                                                            style: TextStyle(
                                                                              //backgroundColor: Colors.white,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 13.0,
                                                                              color: Colors.green,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            "Upto 20%",
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              //backgroundColor: Colors.white,
                                                                              fontSize: 15.0,
                                                                              color: HexColor("#202BC6"),
                                                                            ),
                                                                          ),
                                                                        ]))
                                                            )]),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ])),

                                  ])
                      ]),

                  SizedBox(height:20),
                  Container(
                      width: 400,
                      margin: EdgeInsets.all(10),
                      child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(
                              'assets/best.png'),
                        ),
                      )),
                  SizedBox(height:10),
    Container(
    margin: EdgeInsets.symmetric(vertical:0.0),
    padding: EdgeInsets.fromLTRB(0,0,0,21),
        decoration: new BoxDecoration(
            color: Theme.of(context).primaryColor,
          
        ),
    child:Column(
    children:[

    Container(

    padding: EdgeInsets.fromLTRB(21, 10, 21, 10),
    width:402,
    height:290.0,

        child:Column(
            children:[

SizedBox(height:1),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[

                              RichText(
                                  text: TextSpan(
                                      children: [

                                        TextSpan(
                                          text: "Nearby Stores",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,

                                          ),
                                        )
                                      ]
                                  )),

                          RichText(
                              text: TextSpan(
                                  children: [

                                    TextSpan(
                                      text: "Get faster delivery from nearby stores",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    )
                                  ]
                              )),]),
                    SizedBox(width:45),
                    ElevatedButton(
                      style:ElevatedButton.styleFrom( // returns ButtonStyle
    primary: Colors.white,
    onPrimary: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(2.0),
    ),
    ),
                      onPressed: () {

                      },
                      child: Text('View All',style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),),
                    ),
                  ]),
         SizedBox(height:20),
         Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Container(
                decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/more.jpg'),
                      fit: BoxFit.fill,
                    ),
                  shape: BoxShape.circle,
                    color: Colors.white12,
                    ),
                width: 100.0,
                height:90,



              ),

              Container(
                decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/star.png'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.white12,
                  shape: BoxShape.circle,),
                width: 100.0,
                height:90,



              ),

            ]),

SizedBox(height:10),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/dmart.jpg'),
                                fit: BoxFit.fill,
                              ),
                              color: Colors.white12,
                            shape: BoxShape.circle,),
                          width: 100.0,
                          height:90,



                        ),
                        Container(
                          decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/spar.jpg'),
                                fit: BoxFit.fill,
                              ),
                              color: Colors.white12,
                            shape: BoxShape.circle,),
                          width: 100.0,
                          height:90,



                        ),



                      ],
                    ),
                  ])
    )
              ]))]));

      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the basket page"),
            RaisedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            )
          ],
        );
    }
  }
}
Swiper imageSlider(context) {
  var images = ['slider1.jpg', 'slider2.jpg', 'slider3.jpg'];
  return new Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return new Image.asset('assets/' + images[index]);
    },
    itemCount: images.length,
    viewportFraction: 20,
    scale: 0.9,
    pagination: SwiperPagination(builder: new DotSwiperPaginationBuilder(
        color: Colors.white, activeColor: Colors.white)),
  );
}
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}