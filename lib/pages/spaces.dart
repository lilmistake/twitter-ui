import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitter_ui/components/components.dart';

class SpacesPage extends StatelessWidget {
  final Widget bottomNavigationBar;
  const SpacesPage({Key? key, required this.bottomNavigationBar})
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
            title: const Text("Spaces"),
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
