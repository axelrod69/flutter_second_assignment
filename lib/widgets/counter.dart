// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, annotate_overrides

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  var value = 1;

  void increment() {
    setState(() {
      value++;
    });
  }

  void decrement() {
    setState(() {
      value > 0 ? value-- : value = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: increment,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80)
                ),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 20),
            )
          ),
          SizedBox(width: 15),
          Text(value.toString(), style: const TextStyle(
            color: Colors.white,
            fontSize: 40
          )),
          SizedBox(width: 15),
          InkWell(
              onTap: decrement,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80)
                  ),
                ),
                child: const Center(
                  child: Text('---', style: TextStyle(
                    color: Colors.white,
                  )),
                ),
              )
          )
        ],
      ),
    );
  }
}