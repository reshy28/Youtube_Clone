import 'package:flutter/material.dart';
import 'package:youtube/utlis/colors.dart';
import 'package:youtube/view/bottomsheet/bottomsheet.dart';
import 'package:youtube/view/homescreen/homescreen.dart';
import 'package:youtube/view/library_card/library_card.dart';
import 'package:youtube/view/library_history/library_history.dart';
import 'package:youtube/view/shorts_page/shorts.dart';
import 'package:youtube/view/story_card/storycard.dart';
import 'package:youtube/view/subscription/subscription.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int myindex = 0;
  List barwidgets = [
    homescreen(),
    shorts(),
    bottomsheet(),
    subscription(),
    librari(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myindex,
        onTap: (int newindex) {
          setState(() {
            myindex = newindex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.home_outlined, color: Colorconstant.mycolorblack),
              label: "home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_display_outlined),
            label: "shorts",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: "Library",
          ),
        ],
      ),
      body: barwidgets.elementAt(myindex),
    );
  }
}
