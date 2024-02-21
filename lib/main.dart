import 'package:flutter/material.dart';
import 'package:youtube/view/bottombar/bottombar.dart';
import 'package:youtube/view/splashscreen/splashscreen.dart';

void main() {
  runApp(youtube());
}

class youtube extends StatelessWidget {
  const youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
