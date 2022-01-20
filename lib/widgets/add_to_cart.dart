// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 150,
      height: 40,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(76, 219, 44, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
      ),
      child: const Center(
        child: Text('Add To Cart', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15
        )),
      ),
    );
  }
}