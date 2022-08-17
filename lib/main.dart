import 'package:flutter/material.dart';
import 'package:twitter_ui/components/bottom_navigation_bar.dart';
import 'package:twitter_ui/pages/pages.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(bottomNavigationBar: MyBottomNavigationBar(),)
        );
  }
}
