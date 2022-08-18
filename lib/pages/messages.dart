import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitter_ui/components/drawer.dart';

class MessagesPage extends StatelessWidget {
  final Widget bottomNavigationBar;
  const MessagesPage({Key? key, required this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                  statusBarIconBrightness: Brightness.dark),
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              title: const Text("Messages"),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
              ],
            )
          ],        
      ),
      drawer: const MyAppDrawer(),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
