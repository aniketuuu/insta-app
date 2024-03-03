import 'package:app/utils/global.dart';
import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  final String img;
  final String username;

  const Story({Key? key, required this.img, required this.username})
      : super(key: key);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                radius: 37,
                backgroundImage: NetworkImage(widget.img),
              ),
            ),
            Text(
              widget.username,
              style: TextStyle(fontSize: 14, color: secondaryColor),
            ),
          ],
        ));
  }
}
