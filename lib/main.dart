import 'package:flutter/material.dart';
import 'package:gctu_library_management/home/books_detail_page.dart';
import 'package:gctu_library_management/home/homepage.dart';

import 'onboarding/onBoarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  Homepage(),
    );
  }
}


