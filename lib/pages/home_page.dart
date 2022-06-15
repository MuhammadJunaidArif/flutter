// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "junaid";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(title: Text('Catalog App')),
      body: Center(
          child: Container(
        child: Text('Welcom to Flutter $days days course by $name '),
        //string inter pulation  welcom..... $days...
      )),
      // ignore: prefer_const_constructors
      drawer: Drawer(),
    );
  }
}
