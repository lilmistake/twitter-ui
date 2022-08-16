import 'package:twitter_ui/models/profile_model.dart';

class Post {
  final Profile author;

  final String image;
  final int likes;
  final int rts;
  final int comments;
  final String timeStamp;
  final String content;

  Post(
      {required this.image,
      required this.likes,
      required this.rts,
      required this.comments,
      required this.timeStamp,
      required this.author,
      required this.content
      });
}
