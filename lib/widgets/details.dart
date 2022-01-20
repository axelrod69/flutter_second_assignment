// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: const [
                Icon(Icons.access_time, color: Colors.white),
                Text('10 min', style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          SizedBox(width: 20),
          Container(
            child: Row(
              children: const [
                Icon(Icons.local_fire_department_sharp, color: Colors.white),
                Text('Spicy', style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          SizedBox(width: 20),
          Container(
            child: Row(
              children: const [
                Icon(Icons.shopping_bag, color: Colors.white),
                Text('100gm', style: TextStyle(color: Colors.white))
              ],
            ),
          )
        ],
      ),
    );
  }
}