import 'package:flutter/material.dart';
import 'package:flutter_cookie_store_ui/screen/botton_screen.dart';
import 'package:flutter_cookie_store_ui/screen/categorie_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: ButtonScreen(),

    );
  }
}
