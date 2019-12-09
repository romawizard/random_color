import 'package:flutter/material.dart';
import 'package:random_color/rendom_color.dart';
import 'package:random_color/resources/AppColors.dart';
import 'package:random_color/resources/AppStrings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.title),
      ),
      body: Stack(
        children: <Widget>[
          RandomColor(),
          Center(
            child: Text(
              AppStrings.heyThere,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
