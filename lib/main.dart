import 'package:build_cv/screens/home/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          appBarTheme: AppBarTheme(centerTitle: true)),
      home: HomeScreen(),
    );
  }
}
