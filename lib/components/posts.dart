import 'package:flutter/material.dart';
import 'package:twitter_ui/data/data.dart';

class TwitterPosts extends StatelessWidget {
  final int index;
  const TwitterPosts({super.key, required this.index});
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 200,      
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Text(User[index]), 
    );
  }
}
