import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            height: 490,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 10,
                    spreadRadius: 2)
              ],
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://pbs.twimg.com/media/B5t_2MQCcAAefz4.jpg"),
                            radius: 24,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("cristano ronaldo",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                "Madrid,Spain",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.more_horiz_outlined),
                  ],
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.network(
                      "http://source.unsplash.com/random/${index + 5}",
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      // alignment: Alignment.centerRight,
                      children: [
                        CircleAvatar(
                          radius: 15.6,
                          backgroundImage: NetworkImage(
                              "http://source.unsplash.com/random/animals"),
                          child: Align(
                            alignment: Alignment(140, 0),
                            child: CircleAvatar(
                              radius: 15.5,
                              backgroundImage: NetworkImage(
                                  "http://source.unsplash.com/random/person"),
                              child: Align(
                                alignment: Alignment(180, 0),
                                child: CircleAvatar(
                                  radius: 15.4,
                                  backgroundImage: NetworkImage(
                                      "http://source.unsplash.com/random/"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Liked by something and other",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            CupertinoIcons.heart,
                            size: 32,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            CupertinoIcons.chat_bubble,
                            size: 32,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/images/send.png",
                            height: 32,
                          ),
                        ],
                      ),
                      const Icon(
                        CupertinoIcons.bookmark,
                        size: 32,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16, top: 5),
                      child: Text(
                        "25 likes",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                          "cristianoronaldosocialmedia Good news, alnasr win al tauwun cristano achieve two goals"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View all 4 comments",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
