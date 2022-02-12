import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  var list = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.white,
    Colors.amber
  ];
  var change;

  @override
  Widget build(BuildContext) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Bài 1'),
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Random random = new Random();
                          int rnd = random.nextInt(5);
                          count++;
                          if (count % 2 == 1) {
                            change = list[rnd];
                          }
                          print(count);
                        });
                      },
                      child: Text('Press!!!')),
                  padding: EdgeInsets.all(12),
                ),
                Text(
                  '$count',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            alignment: Alignment.center,
            color: change,
            padding: EdgeInsets.all(12),
          )),
    );
  }
}
