// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class StuffCards extends StatelessWidget {
  final String imageUrl;
  final bool value;

  StuffCards(this.imageUrl, this.value);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
//        Container(
//          width: 120,
//        ),
        Positioned(
          child: Container(
            width: 110,
            height: 120,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                    topLeft: Radius.circular(100),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                ),
                child: Column(
                  children: [
                    Text('Fried Squid', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )),
                    Container(
                      width: 75,
                      color: Colors.transparent,
                      child: Text(
                          '₹ 245', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20
                      )),
                    ),
                    Container(
                      width: double.infinity,
                      height: 16,
                      padding: EdgeInsets.only(right: 2, bottom: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          value ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 15
                          ) : Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 15
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              imageUrl,
              height: 60,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}