import 'package:flutter/material.dart';
import 'package:projectanimation2/pages/home_page.dart';
import 'package:projectanimation2/pages/second_page.dart';


void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => const HomePage(),
          "second_page": (context) => const SecondPage(),
        },
      ),
  );
}


