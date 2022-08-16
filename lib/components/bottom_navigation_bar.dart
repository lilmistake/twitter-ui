import 'package:flutter/material.dart';
import 'package:twitter_ui/custom_icons_icons.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(      
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(CustomIcons.home, color: Colors.black,), label: 'placeholder'),
        BottomNavigationBarItem(icon: Icon(CustomIcons.search, color: Colors.black), label: 'placeholder'),
        BottomNavigationBarItem(icon: Icon(CustomIcons.mic, color: Colors.black), label: 'placeholder'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black), label: 'placeholder'),
        BottomNavigationBarItem(icon: Icon(CustomIcons.messages, color: Colors.black), label: 'placeholder'),
      ],
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
