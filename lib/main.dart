import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme: ThemeData(primarySwatch: Colors.red),
        initialRoute: MyRoutes.HomeRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.HomeRoute: (context) => Homepage(),
          MyRoutes.LoginRoute: (context) => LoginPage(),
        });
  }
}
