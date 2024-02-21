import 'package:flutter/material.dart';
import 'package:youtube/utlis/colors.dart';
import 'package:youtube/view/library_history/library_history.dart';

class librari extends StatelessWidget {
  const librari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
            height: 100,
            width: 100,
          ),
        ),
        actions: [
          Image.asset("assets/images/screening.png", width: 30),
          SizedBox(
            width: 10,
          ),
          Image.asset("assets/images/bell_icon.png", width: 30),
          SizedBox(
            width: 10,
          ),
          Image.asset("assets/images/search_icon.png", width: 30),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/user_icon.jpeg"),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History",
                    style: TextStyle(color: Colorconstant.mycolorblack),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(color: Colorconstant.mycolorblue),
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              width: double.infinity,
              child: history(),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colorconstant.mycolorgrey,
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.playlist_play),
                SizedBox(
                  width: 9,
                ),
                Text("Playlists"),
                SizedBox(
                  width: 200,
                ),
                Row(
                  children: [
                    Text(
                      "View all",
                      style: TextStyle(color: Colorconstant.mycolorblue),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 130,
              width: double.infinity,
              child: history(),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colorconstant.mycolorgrey,
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.smart_display_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Your Videos")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.download),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text("Downloads"),
                          Text("5 videos"),
                        ],
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Icon(Icons.check)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.smart_display_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Your Videos")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
