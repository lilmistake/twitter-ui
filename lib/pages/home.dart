import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  final Widget bottomNavigationBar;
  const SearchTab({Key? key, required this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
          child: Text(
        "Home",
        style: TextStyle(fontSize: 50),
      )),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
