import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "junaid";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text('Catalog App')), 
        
        body: Center(
            child: Container(
          child: Text('Welcom to Flutter $days days course by $name '),
          //string inter pulation  welcom..... $days...
        )),
        drawer: Drawer(),
        
        
        );
  }
}
