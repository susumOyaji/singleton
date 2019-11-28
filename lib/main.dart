import 'package:flutter/material.dart';
import 'package:singleton/home.dart';
import 'package:singleton/second.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => HomePage(),
          '/second': (BuildContext context) => SecondPage()
        },
      ),
    );