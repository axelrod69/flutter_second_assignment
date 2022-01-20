// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';
import './cards.dart';

class OtherStuff extends StatefulWidget {
  OtherStuffState createState() => OtherStuffState();
}

class OtherStuffState extends State<OtherStuff> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: 150,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 5),
            child: const Text('Gets more interested with this', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
            )),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              StuffCards('https://static.toiimg.com/thumb/60892473.cms?imgsize=159129&width=800&height=800', false),
              SizedBox(width: 10),
              StuffCards('https://thestayathomechef.com/wp-content/uploads/2016/06/Fried-Chicken-4-1.jpg', true),
              SizedBox(width: 10),
              StuffCards('https://www.foodrepublic.com/wp-content/uploads/2012/03/033_FR11785.jpg', false),
            ],
          )
        ],
      )
    );
  }
}