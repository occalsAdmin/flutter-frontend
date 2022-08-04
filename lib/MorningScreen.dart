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


class MorningScreen  extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<MorningScreen>with SingleTickerProviderStateMixin {





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
                            mainAxisAlignment: MainAxisAlignment.start,
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
                        height:550,
                        margin: EdgeInsets.symmetric(vertical:0.0),
                        padding: EdgeInsets.fromLTRB(10,10,10,21),
                        decoration: new BoxDecoration(
                            color:Colors.white,
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
                                  alignment:Alignment.topLeft,
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 15,bottom:10),

                                      child:RichText(

                                          text: TextSpan(
                                              children: [



                                                TextSpan(
                                                  text: "Morning Needs",
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
                                              height: 170.0,

                                              decoration: BoxDecoration(
                                                borderRadius: new BorderRadius.only(
                                                    topLeft: const Radius.circular(10.0),
                                                    topRight: const Radius.circular(10.0),
                                                    bottomLeft: Radius.circular(10.0),
                                                    bottomRight: Radius.circular(10.0)
                                                ),

                                                color: Colors.white,

                                                image: DecorationImage(
                                                  image: NetworkImage('https://images.unsplash.com/photo-1529258283598-8d6fe60b27f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWlsayUyMGJyZWFkfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),


                                            ),

                                          ),
                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                SizedBox(height:10),
                                                Text(
                                                  'Dairy Eggs &',
                                                  style: TextStyle(
                                                    //backgroundColor: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight:FontWeight.w700,
                                                    color:Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  ' Breads',
                                                  style: TextStyle(
                                                    //backgroundColor: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight:FontWeight.w700,
                                                    color:Colors.black,
                                                  ),
                                                ),
                                              ])

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
                                                height: 170.0,
                                                decoration: BoxDecoration(
                                                  borderRadius: new BorderRadius.only(
                                                      topLeft: const Radius.circular(10.0),
                                                      topRight: const Radius.circular(10.0),
                                                      bottomLeft: Radius.circular(10.0),
                                                      bottomRight: Radius.circular(10.0)
                                                  ),
                                                  color: Colors.white,
                                                  image: DecorationImage(
                                                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG_UdoMxJ_-sERZjrIUmuwmKPRLLTxgj3uac3kUPFZctmDmPQwl83DAzjOG1UH94h4wuw&usqp=CAU'),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),


                                              )),
                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                SizedBox(height:10),
                                                Text(
                                                  'Fresh',
                                                  style: TextStyle(
                                                    //backgroundColor: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight:FontWeight.w700,
                                                    color:Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  ' Vegtables',
                                                  style: TextStyle(
                                                    //backgroundColor: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight:FontWeight.w700,
                                                    color:Colors.black,
                                                  ),
                                                ),
                                              ])
                                        ]),
                                  ]),
                              SizedBox(height:10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:[
                                    Column(

                                        children:[
                                          SizedBox(height:2),
                                          GestureDetector(
                                            onTap: (){
                                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MorningListBatter()));
                                            },

                                            child:
                                            Container(
                                              margin:EdgeInsets.fromLTRB(0, 10, 10, 10),
                                              width: 170, //stretches to maximum width
                                              height: 170.0,
                                              decoration: BoxDecoration(
                                                borderRadius: new BorderRadius.only(
                                                    topLeft: const Radius.circular(10.0),
                                                    topRight: const Radius.circular(10.0),
                                                    bottomLeft: Radius.circular(10.0),
                                                    bottomRight: Radius.circular(10.0)
                                                ),
                                                color: Colors.white,
                                                image: DecorationImage(
                                                  image: NetworkImage('https://www.pngitem.com/pimgs/m/111-1112830_fruit-png-image-with-transparent-background-transparent-background.png'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),


                                            ),
                                          ),
                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                SizedBox(height:10),
                                                Text(
                                                  'Fresh',
                                                  style: TextStyle(
                                                    //backgroundColor: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight:FontWeight.w700,
                                                    color:Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  ' Fruits',
                                                  style: TextStyle(
                                                    //backgroundColor: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight:FontWeight.w700,
                                                    color:Colors.black,
                                                  ),
                                                ),
                                              ])
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
                                                height: 170.0,
                                                decoration: BoxDecoration(

                                                  borderRadius: new BorderRadius.only(
                                                      topLeft: const Radius.circular(10.0),
                                                      topRight: const Radius.circular(10.0),
                                                      bottomLeft: Radius.circular(10.0),
                                                      bottomRight: Radius.circular(10.0)
                                                  ),
                                                  color: Colors.white,
                                                  image: DecorationImage(
                                                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn-m2PrA0wJZISXk2-Hxr8rXHZXh_8Q2oVM-A0zb6M1LbXyD33RJt2TV7bXAGLBD12k-c&usqp=CAU'),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),


                                              )),

                                          Column(
                                              children:[
                                                SizedBox(height:10),
                                                Text(
                                                  '          Coconut',
                                                  style: TextStyle(
                                                    //backgroundColor: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight:FontWeight.w700,
                                                    color:Colors.black,
                                                  ),
                                                ),
                                              ]),

                                        ]),

                                  ])
                            ])),
                    SizedBox(height:40),







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