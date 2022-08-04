import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';



import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:hexcolor/hexcolor.dart';


import 'dart:convert';
import 'dart:io';

import 'MySubscriptionPage.dart';
import 'OrderPage.dart';


class PaymentPage extends StatefulWidget  {
  @override
  _RegisterState createState() => _RegisterState();
}


class _RegisterState extends State<PaymentPage> {



  late String child = "";
  @override
  void initState() {
    super.initState();
    check_if_already_login();



  }
  @override
  void dispose() {

    super.dispose();
  }
  void check_if_already_login() async {



    setState(() {

    });
  }




  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: HexColor("#051094")
    ));

    return


      Scaffold(

          appBar:AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
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
              title:

              Row(
                  children:[
                    Text(
                        "       Payment Method",
                        style:TextStyle(color:Colors.black)
                    ),


                  ])
          ),
          body:
SingleChildScrollView(
          child:
          Container(
              color:Colors.white,
    child:
          Column(
              children:[
                SizedBox(height:1),
                Container(
                    color:HexColor("#89CFF0"),
                  child:
                Row(
                    children:[
                      Column(
                        children:[
                      Text("     Deliver To ",
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Colors.grey),
                          ),
                          Text("     Home ",
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Colors.black),
                          ),]),

                      SizedBox(width:200),
                      Column(
                          children:[
                      Text("Order Amount ",
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Colors.grey),
                      ),
                            Text("Rs 90 ",
                              style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Colors.black),
                            ),
                            ])
                    ])),
              SizedBox(height:10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                          child:
                          RichText(
                              text: TextSpan(
                                  children: [



                                    TextSpan(
                                      text: "  UPI",
                                      style: TextStyle(
                                        fontSize:18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    )
                                  ]
                              )))]),
                SizedBox(height:10),
                Card(
                  elevation: 15,
                  child: Column(
                    children:[
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://pbs.twimg.com/profile_images/1329113828731146242/FzxBBPrs_400x400.jpg'),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white12,
                        shape: BoxShape.circle,),
                      width: 80.0,
                      height:90,



                    ),
                     Container(
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://static.abplive.com/ani-images/Paytm_apr28.jpg?impolicy=abp_images&imwidth=720'),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white12,
                        shape: BoxShape.circle,),
                      width: 80.0,
                      height:50,



                    ),

                    Container(
                    decoration: new BoxDecoration(
                    image: DecorationImage(
    image: NetworkImage('https://play-lh.googleusercontent.com/6iyA2zVz5PyyMjK5SIxdUhrb7oh9cYVXJ93q6DZkmx07Er1o90PXYeo6mzL4VC2Gj9s'),
    fit: BoxFit.contain,
    ),
    color: Colors.white12,
    shape: BoxShape.circle,),
    width: 80.0,
    height:50,



    ),
                      Container(
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2020/04/amazon-pay-1588149157.jpg'),
                            fit: BoxFit.contain,
                          ),
                          color: Colors.white12,
                          shape: BoxShape.circle,),
                        width: 130.0,
                        height:80,



                      ),
]),
                      Text("Other UPI Options ",
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Theme.of(context).primaryColor),
                      ),
                      SizedBox(height:20)

                  ])
    ),
                SizedBox(height:20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                          child:
                          RichText(
                              text: TextSpan(
                                  children: [



                                    TextSpan(
                                      text: "  Cards",
                                      style: TextStyle(
                                        fontSize:18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    )
                                  ]
                              )))]),
                Card(
                  elevation: 5,
                  child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                  Container(
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://thumbs.dreamstime.com/b/credit-card-illustration-front-back-view-vector-eps-190373102.jpg'),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white12,
                        shape: BoxShape.rectangle,),
                      width: 100.0,
                      height:80,



                    ),
                   Text('Credit Cards/Debit Cards',style:TextStyle(fontWeight: FontWeight.bold)),

                   Icon(Icons.arrow_forward_ios,color: Theme.of(context).primaryColor,size:15)])
                  ),

                SizedBox(height:20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                          child:
                          RichText(
                              text: TextSpan(
                                  children: [



                                    TextSpan(
                                      text: "  Wallets",
                                      style: TextStyle(
                                        fontSize:18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    )
                                  ]
                              )))]),
                Card(
                    elevation: 5,
                    child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:[
                          Container(
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiDsZBXoWPiVA_Uij4Vm3vFAXwNyyHXiFme1_zq5U3Pl2R51pPUwPinM7g9IaanuF7-Ss&usqp=CAU'),
                                fit: BoxFit.contain,
                              ),
                              color: Colors.white12,
                              shape: BoxShape.rectangle,),
                            width: 100.0,
                            height:80,



                          ),
                          Text('Freecharge',style:TextStyle(fontWeight: FontWeight.bold)),

                          Icon(Icons.radio_button_checked,color: Theme.of(context).primaryColor,size:15)])
                ),

                SizedBox(height:15),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                          child:
                          RichText(
                              text: TextSpan(
                                  children: [



                                    TextSpan(
                                      text: "  Net Banking",
                                      style: TextStyle(
                                        fontSize:18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    )
                                  ]
                              )))]),
                Card(
                    elevation: 5,
                    child:
                    Column(
                        children:[
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:[
                          Container(
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSThf8hRK_T066xQS8Osu1_lWQkiYgBZiFVOIERH-Q_mJPiwFYu20eDwu38sHO2l3KlIIM&usqp=CAU'),
                                fit: BoxFit.contain,
                              ),
                              color: Colors.white12,
                              shape: BoxShape.rectangle,),
                            width: 100.0,
                            height:80,



                          ),
                          Container(
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/03/30/899890-icici-bank-logo.jpg'),
                                fit: BoxFit.contain,
                              ),
                              color: Colors.white12,
                              shape: BoxShape.rectangle,),
                            width: 100.0,
                            height:80,



                          ),

                          Container(
                          decoration: new BoxDecoration(
                          image: DecorationImage(
    image: NetworkImage('https://akm-img-a-in.tosshub.com/indiatoday/images/story/201601/sbi-647_011916033133.jpg'),
    fit: BoxFit.contain,
    ),
    color: Colors.white12,
    shape: BoxShape.rectangle,),
    width: 100.0,
    height:80,



    ),
                          Container(
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://nenow.in/wp-content/uploads/2020/07/Story-2-1.jpg'),
                                fit: BoxFit.contain,
                              ),
                              color: Colors.white12,
                              shape: BoxShape.rectangle,),
                            width: 100.0,
                            height:80,



                          ),]),
                          Text("Other Banks ",
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize:15,color:Theme.of(context).primaryColor),
                          ),
                          SizedBox(height:20)
                        ]
                )),
                SizedBox(height:10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                          child:
                          RichText(
                              text: TextSpan(
                                  children: [



                                    TextSpan(
                                      text: "  Cash On Delivery",
                                      style: TextStyle(
                                        fontSize:18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    )
                                  ]
                              )))]),
                Card(
                    elevation: 5,
                    child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:[
                          Container(
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOWYH-pjiaggL9kG87o8lOcSMWVGdG82I5Yq53LwmhePLxHEbuLFDStWbQOX8PtaeW8RM&usqp=CAU'),
                                fit: BoxFit.contain,
                              ),
                              color: Colors.white12,
                              shape: BoxShape.rectangle,),
                            width: 100.0,
                            height:80,



                          ),
                          Text('Cash On Delivery',style:TextStyle(fontWeight: FontWeight.bold)),

                          Icon(Icons.check_circle,color: Theme.of(context).primaryColor,size:20)])
                ),
                SizedBox(height:20),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => OrderPage()));
                  },
                  color: Theme.of(context).primaryColor,
                  padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                  child: Text(
                      "Proceed To Pay",
                      style:TextStyle(color:Colors.white)
                  ),
                ),
                SizedBox(height:20)
              ])))
      );
  }

}