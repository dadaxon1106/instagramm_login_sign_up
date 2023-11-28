import 'package:animation_lesson_part_two/pages/home/widgets/post_part.dart';
import 'package:animation_lesson_part_two/pages/home/widgets/story_part.dart';
import 'package:animation_lesson_part_two/pages/reels_page/reels_page.dart';
import 'package:animation_lesson_part_two/pages/searchpage/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: const Text("Instagramm"),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(
                  CupertinoIcons.suit_heart,
                  size: 35,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            CupertinoIcons.chat_bubble,
            size: 35,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const StoryPage(),
            const SizedBox(
              height: 8,
            ),
            const PostPage(),
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
                  const Icon(
                    Icons.home_rounded,
                    size: 35,
                    color: Colors.black,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const SearchPage();
                          },
                        ),
                      );
                    },
                    child: const Icon(
                      CupertinoIcons.search,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const ReelsPage();
                          },
                        ),
                      );
                    },
                    child: const Icon(
                      CupertinoIcons.play_rectangle,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 18,
                    backgroundImage:
                        NetworkImage("http://source.unsplash.com/random/"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
