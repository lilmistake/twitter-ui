import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
                          backgroundImage: NetworkImage(post.profilePicture)),
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
                                post.name,
                                style:
                                    const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                " @${post.handle}",
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
                            child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')),
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
