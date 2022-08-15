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
            body: CustomScrollView(
          slivers: [            
            const MyAppbar(),
            const Stories(),
            const SliverToBoxAdapter(
              child: Divider(
                height: 10,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return TwitterPosts(index: index,);
            }, childCount: User.length))
          ],
        )));
  }
}
