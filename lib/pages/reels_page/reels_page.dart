import 'package:animation_lesson_part_two/pages/home/home_view.dart';
import 'package:animation_lesson_part_two/pages/searchpage/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  // alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          "http://source.unsplash.com/random/${index + 5}"),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(
                          CupertinoIcons.heart,
                          size: 44,
                          color: Colors.white,
                        ),
                        const Text(
                          "142k",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Icon(
                          CupertinoIcons.chat_bubble,
                          size: 40,
                          color: Colors.white,
                        ),
                        const Text(
                          "20K",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Image.asset(
                          "assets/images/send.png",
                          height: 40,
                          color: Colors.white,
                        ),
                        Text(
                          "30K",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Icon(
                          Icons.more_horiz,
                          size: 40,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 60,
            width: 385,
            decoration: const BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.home_rounded,
                    size: 35,
                    color: Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    CupertinoIcons.search,
                    size: 35,
                    color: Colors.grey,
                  ),
                ),
                const Icon(
                  CupertinoIcons.play_rectangle,
                  size: 35,
                  color: Colors.black,
                ),
                const CircleAvatar(
                  radius: 18,
                  backgroundImage:
                      NetworkImage("http://source.unsplash.com/random/"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
