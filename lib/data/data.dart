import 'package:twitter_ui/models/models.dart';
import 'package:twitter_ui/models/profile_model.dart';

final twitterPosts = <Post>[
  Post(
      image: 'none',
      likes: 50000,
      comments: 4,
      rts: 2,
      content: 'abcdefghijklmnopqrstuvwxyz',
      timeStamp: '20m',
      author: Profile(
          handle: 'elonmusk',
          name: 'Elon Musk',
          pfp:
              'https://pbs.twimg.com/profile_images/1529956155937759233/Nyn1HZWF_400x400.jpg')),
  Post(
      image: 'none',
      likes: 50000,
      comments: 4,
      rts: 2,
      content: 'abcdefghijklmnopqrstuvwxyz',
      timeStamp: '5m',
      author: Profile(
          handle: 'twitter',
          name: 'Twitter',
          pfp:
              'https://pbs.twimg.com/profile_images/1488548719062654976/u6qfBBkF_400x400.jpg')),
  Post(
      image: 'none',
      likes: 50000,
      comments: 4,
      rts: 2,
      content: 'abcdefghijklmnopqrstuvwxyz',
      timeStamp: '20m',
      author: Profile(
          handle: 'GitHub',
          name: 'GitHub',
          pfp:
              'https://pbs.twimg.com/profile_images/1414990564408262661/r6YemvF9_400x400.jpg'))
];
