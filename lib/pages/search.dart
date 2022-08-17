import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPage extends StatelessWidget {
  final Widget bottomNavigationBar;
  const SearchPage({Key? key, required this.bottomNavigationBar})
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
              leading: const Icon(Icons.menu),
              title: const Text("Search"),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
              ],
            )
          ],        
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}