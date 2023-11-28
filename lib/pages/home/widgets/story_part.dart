import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CircleAvatar(
            radius: 38,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              backgroundImage:
                  NetworkImage("http://source.unsplash.com/random/$index"),
              radius: 33,
            ),
          );
        },
      ),
    );
  }
}
