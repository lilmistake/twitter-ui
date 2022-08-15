import 'package:flutter/material.dart';
import 'AppBar.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: CustomScrollView(
          slivers: [
            const MyAppbar(),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Icon>[
                    Icon(
                      Icons.circle,
                      size: 60,
                      color: Colors.grey[350],
                    ),
                    Icon(
                      Icons.circle,
                      size: 60,
                      color: Colors.grey[350],
                    ),
                    Icon(
                      Icons.circle,
                      size: 60,
                      color: Colors.grey[350],
                    ),
                    Icon(
                      Icons.circle,
                      size: 60,
                      color: Colors.grey[350],
                    ),
                    Icon(
                      Icons.circle,
                      size: 60,
                      color: Colors.grey[350],
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Divider(
                height: 10,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 200,
                color: Colors.red,
                margin: const EdgeInsets.symmetric(vertical: 2),
              );
            }, childCount: 10))
          ],
        )));
  }
}
