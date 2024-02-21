import 'package:flutter/material.dart';
import 'package:youtube/utlis/colors.dart';

import 'package:youtube/view/feed_cards/feedcards.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
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
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(250, 224, 224, 220),
                      ),
                      child: Icon(Icons.explore_outlined),
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colorconstant.mycolorblack),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(color: Colorconstant.mycolorwhite),
                        ),
                      ),
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colorconstant.mycolortransperent),
                      child: Center(
                        child: Text(
                          "Tamil cinema",
                          style: TextStyle(color: Colorconstant.mycolorblack),
                        ),
                      ),
                      height: 40,
                      width: 100,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colorconstant.mycolortransperent),
                      child: Center(
                        child: Text(
                          "Shopping",
                          style: TextStyle(color: Colorconstant.mycolorblack),
                        ),
                      ),
                      height: 40,
                      width: 100,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colorconstant.mycolortransperent),
                      child: Center(
                        child: Text(
                          "Gaming",
                          style: TextStyle(color: Colorconstant.mycolorblack),
                        ),
                      ),
                      height: 40,
                      width: 100,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colorconstant.mycolortransperent),
                      child: Center(
                        child: Text(
                          "Travel",
                          style: TextStyle(color: Colorconstant.mycolorblack),
                        ),
                      ),
                      height: 40,
                      width: 100,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colorconstant.mycolortransperent),
                      child: Center(
                        child: Text(
                          "Aircrafts",
                          style: TextStyle(color: Colorconstant.mycolorblack),
                        ),
                      ),
                      height: 40,
                      width: 100,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
            feeds(),
          ],
        ),
      ),
    );
  }
}
