import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  final Widget bottomNavigationBar;
  const MessagesPage({Key? key, required this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
          child: Text(
        "Messages",
        style: TextStyle(fontSize: 50),
      )),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
