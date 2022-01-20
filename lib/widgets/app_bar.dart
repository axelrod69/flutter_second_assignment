// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Container(
          height: 200,
        ),
        Positioned(
          child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(120),
                    bottomLeft: Radius.circular(120)
                ),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      spreadRadius: 40,
                      blurRadius: 60,
                      offset: Offset(5, 10)
                  )
                ]
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 160),
              child: Text('₹ 250', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
              )),
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: 0,
          left: 0,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Image.network('https://www.foodrepublic.com/wp-content/uploads/2012/03/033_FR11785.jpg'),
          ),
        )
      ],
    );
  }
}