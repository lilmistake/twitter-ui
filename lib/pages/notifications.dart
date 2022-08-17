import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final Widget bottomNavigationBar;
  const NotificationsPage({Key? key, required this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
          child: Text(
        "Notifications",
        style: TextStyle(fontSize: 50),
      )),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
