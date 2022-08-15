import 'package:flutter/material.dart';
import 'components/components.dart';
import 'data/data.dart';

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
            body: Container(
          color: Colors.grey[350],
          child: CustomScrollView(
            slivers: [
              const MyAppbar(),
              const Stories(),
              const SliverToBoxAdapter(
                child: Divider(
                  height: 3,
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                return TwitterPosts(
                  index: index,
                );
              }, childCount: twitterPosts.length))
            ],
          ),
        )));
  }
}
