import 'package:flutter/material.dart';
import 'package:youtube/utlis/db.dart';

import 'package:youtube/view/subscription/subscription.dart';

class storycard extends StatefulWidget {
  const storycard({super.key});

  @override
  State<storycard> createState() => _storycardState();
}

class _storycardState extends State<storycard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage(subscriptionHistory[index]["image"]!),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text("reshy"),
                  ),
                ],
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: 10),
    );
  }
}
