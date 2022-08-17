import 'package:flutter/material.dart';
import 'package:twitter_ui/components/components.dart';

import '../data/data.dart';

class HomePage extends StatelessWidget {
  final Widget bottomNavigationBar;
  const HomePage({Key? key, required this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ),
        bottomNavigationBar: const MyBottomNavigationBar());
  }
}
