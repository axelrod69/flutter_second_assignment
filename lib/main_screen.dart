// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, annotate_overrides

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import './widgets/app_bar.dart';
import './widgets/counter.dart';
import './widgets/details.dart';
import './widgets/description.dart';
import './widgets/add_to_cart.dart';
import 'widgets/otherStuff/other_stuff.dart';

class MainScreen extends StatefulWidget {
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.menu_book, size: 20, color: Colors.white),
      Icon(Icons.shopping_bag, size: 20, color: Colors.white),
      Icon(Icons.home, size: 40, color: Colors.white),
      Icon(Icons.person, size: 20, color: Colors.white),
      Icon(Icons.more_horiz, size: 20, color: Colors.white)
    ];
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 51, 53, 1),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.orange),
        title: Container(
          margin: EdgeInsets.only(left: 20),
          child: Text('Cheese Chicken Burger', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ))
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
        elevation: 0,
      ),
      body: Column(
        children: [
          CustomAppBar(),
          Counter(),
          SizedBox(height: 5),
          Details(),
          SizedBox(height: 10),
          Description(),
          SizedBox(height: 10),
          AddToCart(),
          SizedBox(height: 10),
          OtherStuff()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 40,
              blurRadius: 60,
              offset: Offset(20, 40)
            )
          ]
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Color.fromRGBO(202, 203, 202, 0.5),
          color: Theme.of(context).primaryColorDark,
          items: items,
          index: index,
          height: 50,
        ),
      ),
    );
  }
}