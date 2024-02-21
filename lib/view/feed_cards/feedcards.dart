import 'package:flutter/material.dart';
import 'package:youtube/utlis/db.dart';

class feeds extends StatelessWidget {
  const feeds({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Column(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          feedsData[index]["image"].toString(),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            feedsData[index]["circleImage"].toString()),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(feedsData[index]["title"].toString()),
                        Text(
                          feedsData[index]["subtitle"].toString(),
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.more_vert),
                  ],
                )
              ],
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: feedsData.length);
  }
}
