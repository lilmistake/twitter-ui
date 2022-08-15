import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}
