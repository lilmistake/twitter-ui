import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              print("object");
              Scaffold.of(context).closeDrawer();
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              print("object");
              Scaffold.of(context).closeDrawer();
            },
          ),
        ],
      ),
    );
  }
}
