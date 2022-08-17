import 'package:flutter/material.dart';

class SpacesPage extends StatelessWidget {
  final Widget bottomNavigationBar;
  const SpacesPage({Key? key, required this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
          child: Text(
        "Spaces",
        style: TextStyle(fontSize: 50),
      )),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
