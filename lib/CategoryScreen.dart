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
import 'WelcomeScreen.dart';


class CategoryScreen  extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<CategoryScreen>with SingleTickerProviderStateMixin {





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
    'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/news15443.jpg',
    'https://www.shopickr.com/wp-content/uploads/2018/12/grofers-brands.jpg',
    'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/news15443.jpg'

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
                    SizedBox(height:20),
                    Container(
                        height:50,
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),

                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: BoxDecoration(
                          color:HexColor("#F0FFFF") ,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          ),
                        ),
                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBarDemoApp()));
                                  },
                                  icon: Icon(Icons.search,color:Theme.of(context).primaryColor)),
                              SizedBox(width:0),
                              Flexible(

                                child: TextField(
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                      fillColor: HexColor("#F0FFFF"),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide.none
                                      ),
                                      hintText: 'Search Products',
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15
                                      ),
                                      prefixIcon: Container(
                                        padding: EdgeInsets.all(5),

                                        width: 18,
                                      )
                                  ),
                                ),
                              )])),
         
         

             

                    SizedBox(height:30),


                    Container(
                      alignment: Alignment.topLeft,
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
                            Container(
                            alignment: Alignment.topLeft,
                              child:Padding(
                                  padding: const EdgeInsets.only(left: 15,bottom:10),

                                  child:RichText(

                                      text: TextSpan(
                                          children: [



                                            TextSpan(
                                              text: "All Categories",
                                              style: TextStyle(
                                                fontSize:22,
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


    


                 ]));

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
        color: Colors.blue, activeColor: Colors.white)),
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