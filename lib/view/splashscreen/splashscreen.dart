import 'dart:async';

import 'package:flutter/material.dart';
import 'package:youtube/utlis/colors.dart';
import 'package:youtube/view/bottombar/bottombar.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => bottombar(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycolorblack,
      body: Center(
        child: Image.asset("assets/images/ytb.logo.png"),
      ),
    );
  }
}
