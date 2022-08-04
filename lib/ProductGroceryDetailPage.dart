import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:occal/SubscriptionScreen.dart';

import 'cartPage.dart';

class ProductGroceryDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductGroceryDetailPage>
    with TickerProviderStateMixin {
  int _counter = 0;
  List<String> itemss = [
    '1 kg',
    '10 kg',


  ];
  String? selectedValue;
  void _incrementCount() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCount() {
    setState(() => _counter--);
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
  String _selectedView = 'Card';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.white,
          actions
              :
          <Widget>[

            IconButton(
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.black,
              ),
              onPressed: () {
                //  Navigator.of(context).pop();
              },
            ),]
      ),
      body: _buildProductDetailsPage(context),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildProductDetailsPage(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          child: Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildProductImagesWidgets(),
                _buildProductTitleWidget(),
                SizedBox(height: 12.0),
                _buildPriceWidgets(),
                SizedBox(height: 12.0),
                _buildDivider(screenSize),
                SizedBox(height: 12.0),


                _buildDetailsAndMaterialWidgets(),
                SizedBox(height: 12.0),


                SizedBox(height: 20.0),
                _buildMoreInfoHeader(),
                SizedBox(height: 6.0),
                _buildDivider(screenSize),
                SizedBox(height: 4.0),
                _buildMoreInfoData(),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[600],
          width: screenSize.width,
          height: 0.25,
        ),
      ],
    );
  }

  _buildProductImagesWidgets() {
    TabController imagesController = TabController(length: 3, vsync: this);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 250.0,
        child: Center(
          child: DefaultTabController(
            length: 3,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.network(
                      "https://m.media-amazon.com/images/I/91j3Eaf3BZL._SL1500_.jpg",
                    ),
                    Image.network(
                      "http://starindojapan.com/wp-content/uploads/2020/01/Atta-Whole-Wheat-1-kg-Loose.jpg",
                    ),
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToF7uy9lKDD1FVZ1qWelAOrDfJnkan0Gk9_g&usqp=CAU",
                    ),
                  ],
                ),
                Container(
                  alignment: FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitleWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
          child: Column(
              children:[
                Text(
                  //name,
                  "Ashirvad Atta",
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [

                        Expanded(
                          child: Text(
                            '500 Gms',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down,size:15)
                      ],
                    ),
                    items: itemss
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {


                      selectedValue = value as String;


                    },

                    iconSize: 18,
                    iconEnabledColor: Colors.white,
                    iconDisabledColor: Colors.white,
                    buttonHeight: 30,
                    buttonWidth: 100,
                    buttonPadding: const EdgeInsets.only(left: 4, right: 4),

                    buttonElevation: 2,
                    itemHeight: 50,
                    itemPadding: const EdgeInsets.only(left: 4, right:0),
                    dropdownMaxHeight: 200,
                    dropdownWidth: 280,
                    dropdownPadding: null,

                    dropdownElevation: 6,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    offset: const Offset(-20, 0),
                  ),
                ),
              ])
      ),
    );
  }

  _buildPriceWidgets() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            "\Rs 75",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            "\Rs 85",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            "30% Off",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.blue[700],
            ),
          ),
          SizedBox(width:115),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:9),
                new Container(
                  child: _counter==0?null:IconButton(
                    icon: new Icon(Icons.remove,size:14),
                    highlightColor: Colors.white,
                    onPressed: (){
                      removeProduct();
                    },
                  ),
                ),
                new Container(
                    child: _counter!=0? Text('$_counter',                                                              style: TextStyle(
                      fontSize: 15,
                      color:Colors.black,
                      fontWeight: FontWeight.bold,)
                    ):
                    InkWell(
                        child:Container(
                          width:100,
height:50,
                            padding: EdgeInsets.fromLTRB(15,13,10,3),

                            child:Align(
                                alignment:Alignment.center,
                                child: Text(" ADD ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      height:1.6, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                                      color: Colors.white, //font color
                                      backgroundColor:Theme.of(context).primaryColor, //background color
                                      //letter spacing
                                      //double underline
                                      decorationColor: Colors.brown, //text decoration 'underline' color
                                      decorationThickness: 1.5, //decoration 'underline' thickness
                                      fontStyle: FontStyle.normal
                                  ),
                                ))),
                        onTap: () =>_addProduct()
                    )),

                new Container(
                  child:  _counter==0?null: IconButton(
                    icon: new Icon(Icons.add,size:15),
                    highlightColor: Colors.white,
                    onPressed: (){
                      _addProduct();
                    },
                  ),
                ),

              ])
        ],
      ),
    );
  }

  _buildFurtherInfoWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.local_offer,
            color: Colors.grey[500],
          ),
          SizedBox(
            width: 12.0,
          ),
          Text(
            "Tap to get further info",
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }

  _buildSizeChartWidgets() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.straighten,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                "Size",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          Text(
            "SIZE CHART",
            style: TextStyle(
              color: Colors.blue[400],
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }

  _buildDetailsAndMaterialWidgets() {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "About Product",
            style: TextStyle(
              color: Colors.black,
            ),
          ),



          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            height: 60.0,
            child:
            Text(
              "76% acrylic, 19% polyster, 5% metallic yarn Hand-wash cold",
              style: TextStyle(
                color: Colors.black,
              ),
            ),


          ),
        ],
      ),
    );
  }

  _buildStyleNoteHeader() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
      ),
      child: Text(
        "STYLE NOTE",
        style: TextStyle(
          color: Colors.grey[800],
        ),
      ),
    );
  }

  _buildStyleNoteData() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
      ),
      child: Text(
        "Boys dress",
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
    );
  }

  _buildMoreInfoHeader() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
      ),
      child: Text(
        "MORE INFO",
        style: TextStyle(
          color: Colors.grey[800],
        ),
      ),
    );
  }

  _buildMoreInfoData() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
      ),
      child: Text(
        "Product Code: 410\nTax info: Applicable GST will be charged at the time of chekout",
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
    );
  }

  _buildBottomNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Flexible(
            flex: 2,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubscriptionScreen(),
                    // Pass the arguments as part of the RouteSettings. The
                    // DetailScreen reads the arguments from these settings.

                  ),
                );
              },
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Get subscription For checkout",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}