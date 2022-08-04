import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MySubscriptionPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}
class _CartPageState extends State<MySubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: HexColor("#9188e5"),
        title: Text("My Plans"),
        actions: <Widget>[


        ],
      ),
      body: Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[createHeader(),  createCartList(),createCartList1(),createCartList2(), footer(context) ],
          );
        },
      ),
    );
  }


  createHeader() {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        "My Subscriptions:",

      ),
      margin: EdgeInsets.only(left: 12, top: 12),
    );
  }

  createSubTitle() {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        "Total(3) Items",

      ),
      margin: EdgeInsets.only(left: 12, top: 4),
    );
  }

  createCartList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 1,
    );
  }
  createCartList1() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem1();
      },
      itemCount: 1,
    );
  }
  createCartList2() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem2();
      },
      itemCount: 1,
    );
  }
  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height:20),

          SizedBox(height:40),
          RaisedButton(
            onPressed: () {
              // Navigator.push(context, new MaterialPageRoute(builder: (context) => CartPage()));
            },
            color: HexColor("#9188e5"),
            padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
            child: Text(
                "My Orders",
                style:TextStyle(color:Colors.white)
            ),
          ),

        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }
  createCartListItem1() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 78,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color:HexColor("#9188e5"),
                    image: DecorationImage(image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6bx2gY1KjQPTwoNZ7ndPfXlmf0AsCvjIqxA&usqp=CAU"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          "Milk Bread",
                          maxLines: 2,
                          softWrap: true,

                        ),
                      ),


                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\Rs 40.00",

                            ),
                            Text(
                              "Daily",

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[

                                  Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",

                                    ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 84,
            height: 24,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left:20,right: 10, top: 8),
            child:Text("Delete"
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)), color: Colors.green),
          ),
        )
      ],
    );
  }
  createCartListItem2() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 78,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color:HexColor("#9188e5"),
                    image: DecorationImage(image:NetworkImage("https://m.media-amazon.com/images/I/91UkbkuEq8L._SX522_.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          "Onion",
                          maxLines: 2,
                          softWrap: true,

                        ),
                      ),


                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\Rs 20.00",

                            ),
                            Text(
                              "Weekly",

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[

                                  Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",

                                    ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 84,
            height: 24,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left:20,right: 10, top: 8),
            child:Text("Delete"
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)), color: Colors.green),
          ),
        )
      ],
    );
  }
  createCartListItem() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 78,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color:HexColor("#051094"),
                    image: DecorationImage(image:NetworkImage("https://www.bigbasket.com/media/uploads/p/xxl/40149829_4-heritage-total-curd.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          "Heritage Curd",
                          maxLines: 2,
                          softWrap: true,

                        ),
                      ),


                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\Rs 30.00",

                            ),
                            Text(
                              "Alternative Days",

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[

                                  Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "4",

                                    ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 84,
            height: 24,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left:20,right: 10, top: 8),
            child:Text("Delete"
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)), color: Colors.green),
          ),
        )
      ],
    );
  }
}