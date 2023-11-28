// import 'package:animation_lesson_part_two/pages/home/home_view.dart';
import 'package:animation_lesson_part_two/pages/reels_page/reels_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 40,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 16),
                    Icon(Icons.search),
                    SizedBox(width: 16),
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 40,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 2),
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 80,
                    width: 40, // Set the height of the child widgets
                    child: Image.network(
                      "http://source.unsplash.com/random/$index",
                      fit: BoxFit.cover,
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
              // ignore: prefer_const_constructors
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.home,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                  const Icon(
                    CupertinoIcons.search,
                    size: 35,
                    color: Colors.black,
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
