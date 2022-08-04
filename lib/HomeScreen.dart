

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/foundation.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

//import 'AboutScreen.dart';
import 'CartsScreen.dart';
import 'CategoryScreen.dart';
import 'FavScreen.dart';
import 'FilterScreen.dart';
import 'LoginScreen.dart';
///import 'MyCart.dart';
//import 'MyOrderScreen.dart';
//import 'Profile.dart';
//import 'SupportScreen.dart';
//import 'TodaysScreen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'MorningScreen.dart';
import 'MyCart.dart';
import 'MyOrderScreen.dart';
import 'ProfileScreen.dart';
import 'ProfilesScreen.dart';
import 'SearchBarDemoApp.dart';
import 'WelcomeScreen.dart';

class HomeScreen  extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        endDrawer: Drawer(

          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: const EdgeInsets.only(left:0,right: 0,top:10,bottom: 10),
            children: <Widget>[
              SizedBox(
                height:10,
              ),
              Container(
                padding: const EdgeInsets.only(left:0,right:0,top:10,bottom: 10),
                // color: Colors.red,
                width: 940,
                height: 298,
                child: Image.asset("assets/1.jpg"),
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.horizontal()),
              ),
              SizedBox(
                height:40,
              ),
              GFListTile(

                titleText:'Home',
                subTitleText:'Click To Home.',
                icon: Icon(Icons.home,color:Theme.of(context).primaryColor),
                onTap: () {
                  // logindata.clear();
                  // logindata.commit();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => HomeScreen()));
                },

              ),
              GFListTile(

                titleText:'Profile',
                subTitleText:'View Profile.',
                icon: Icon(Icons.person_pin_outlined,color:Theme.of(context).primaryColor),
                onTap: () {
                  // logindata.clear();
                  // logindata.commit();
                  /*  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Profile()));*/
                },

              ),
              GFListTile(

                titleText:'My Orders',
                subTitleText:'View Orders.',
                onTap: () {
                  // logindata.clear();
                  // logindata.commit();
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MyOrderScreen()));*/
                },
                icon: Icon(Icons.shopping_bag,color:Theme.of(context).primaryColor),

              ),
              GFListTile(

                titleText:"Today's Deals",
                subTitleText:'View Deals.',
                onTap: () {
                  // logindata.clear();
                  // logindata.commit();
                  /*  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => TodaysScreen()));*/
                },
                icon: Icon(Icons.local_offer,color:Theme.of(context).primaryColor),

              ),
              GFListTile(

                titleText:'About Occals',
                subTitleText:'About Us.',
                onTap: () {
                  // logindata.clear();
                  // logindata.commit();
                  /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => AboutScreen()));*/
                },
                icon: Icon(Icons.badge,color:Theme.of(context).primaryColor),

              ),
              GFListTile(

                titleText:'Support',
                subTitleText:'Look Support.',
                onTap: () {
                  // logindata.clear();
                  // logindata.commit();
                  /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SupportScreen()));*/
                },
                icon: Icon(Icons.support_agent,color:Theme.of(context).primaryColor),

              ),
              GFListTile(

                titleText:'Logout',
                subTitleText:'Logout.',
                onTap: () {
                  // logindata.clear();
                  // logindata.commit();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                icon: Icon(Icons.logout,color:Theme.of(context).primaryColor),

              ),


            ],
          ),
        ),
        body: MyCardWidget(),
      );
  }
}
class MyCardWidget extends StatefulWidget {
  @override
  _SearchPage createState() => _SearchPage();


}
class _SearchPage extends State<MyCardWidget> with SingleTickerProviderStateMixin {

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
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1952&q=80'];
  final List<String> imageList = [
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'];
  @override
  void initState() {
    super.initState();


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

  int _currentIndex = 0;
  final List _pages = [
    WelcomeScreen(),
    CategoryScreen(),
    MorningScreen(),
    CartsScreen(),
    ProfileScreen(),


  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;

    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  FloatingSearchBarController _floatingSearchBarController = FloatingSearchBarController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body:
      Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child:

          _pages.elementAt(_selectedIndex),
        ),
      ),
      //
      bottomNavigationBar:BottomNavigationBar(
        onTap: _onItemTapped,

        type: BottomNavigationBarType.shifting,
        mouseCursor: SystemMouseCursors.cell,
          selectedItemColor:Theme.of(context).primaryColor,
        unselectedIconTheme: IconThemeData (
            color: Colors.black,
            opacity: 0.5,
            size: 25
        ),
        selectedIconTheme:IconThemeData (
            color: Theme.of(context).primaryColor,
            opacity: 1.0,
            size: 20
        ),
        currentIndex: _selectedIndex,
        items: [
      BottomNavigationBarItem(
      backgroundColor:Colors.white,
      icon: Icon(Icons.home,),
      label:'Home',
    ),
    BottomNavigationBarItem(
    backgroundColor: Colors.white,
    icon: Icon(Icons.chat),
    label:'Categories',
    ),
    BottomNavigationBarItem(
    backgroundColor: Colors.white,
    icon: Icon(Icons.sunny),
    label:'Morning Needs',
    ),
    new BottomNavigationBarItem(
    backgroundColor: Colors.white,
    icon: Icon(Icons.shopping_cart_rounded),
      label:'Cart',
    ),
    BottomNavigationBarItem(
    backgroundColor: Colors.white,
    icon: Icon(Icons.person_pin_outlined),
    label:'Profile',
    ),
    ],



          unselectedItemColor: Colors.black,

      ),
    );

  }




  Widget _searchBar() {
    return FloatingSearchBar(
        controller: _floatingSearchBarController,
        backdropColor: Colors.transparent,
        hint: 'Search...',
        clearQueryOnClose: true, // INSERT THIS
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
        transitionDuration: const Duration(milliseconds: 800),
        transitionCurve: Curves.easeInOut,
        physics: const BouncingScrollPhysics(),
        openAxisAlignment: 0.0,
        debounceDelay: const Duration(milliseconds: 500),
        onQueryChanged: (query) {
          // Call your model, bloc, controller here.
        },
        // Specify a custom transition to be used for
        // animating between opened and closed stated.
        transition: CircularFloatingSearchBarTransition(),
        actions: [
          FloatingSearchBarAction.icon(
              showIfClosed: false,
              showIfOpened: true,
              icon: Icon(Icons.clear),
              onTap: () {
                // FloatingSearchBar.of(context)
                _floatingSearchBarController.clear();
                _floatingSearchBarController.close();
                // FloatingSearchBar.of(context).close();
                // final bar = FloatingSearchAppBar.of(context);
                // bar.clear();
                // print(bar);
              }),

        ],
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: Colors.white,
              elevation: 4.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: Colors.accents.map((color) {
                  return Container(height: 112, color: color);
                }).toList(),
              ),
            ),
          );
        });

  }}