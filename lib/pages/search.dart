import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final Widget bottomNavigationBar;
  const SearchPage({Key? key, required this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
          child: Text(
        "Search",
        style: TextStyle(fontSize: 50),
      )),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
