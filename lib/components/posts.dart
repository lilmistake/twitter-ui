import 'package:flutter/material.dart';
import 'package:twitter_ui/custom_icons_icons.dart';
import 'package:twitter_ui/data/data.dart';
import 'package:twitter_ui/models/models.dart';

class TwitterPosts extends StatelessWidget {
  final int index;
  const TwitterPosts({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Post post = twitterPosts[index];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2), // space bw posts
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(post.author.pfp)),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Text>[
                          Text(
                            post.author.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " @${post.author.handle}",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 61, 61, 61)),
                          ),
                          Text(
                            "·${post.timeStamp}",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 61, 61, 61)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(top: 5),
                        child: Text(post.content)),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5, right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Icon>[
                          Icon(
                            CustomIcons.comment,
                            size: 20,
                            color: Color(0xFFA9B1BA),
                          ),
                          Icon(
                            CustomIcons.retweet,
                            size: 20,
                            color: Color(0xFFA9B1BA),
                          ),
                          Icon(
                            CustomIcons.heart,
                            size: 20,
                            color: Color(0xFFA9B1BA),
                          ),
                          Icon(
                            CustomIcons.share,
                            size: 20,
                            color: Color(0xFFA9B1BA),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
