import 'package:flutter/material.dart';
import 'package:youtube/utlis/colors.dart';
import 'package:youtube/utlis/db.dart';

class shorts extends StatefulWidget {
  const shorts({super.key});

  @override
  State<shorts> createState() => _shortsState();
}

class _shortsState extends State<shorts> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: shortsdata.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(shortsdata[index]["image"]!),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 20,
              right: 20,
              child: Column(
                children: [
                  Icon(Icons.thumb_up, color: Colorconstant.mycolorwhite),
                  Text(
                    "465K",
                    style: TextStyle(color: Colorconstant.mycolorwhite),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.thumb_down, color: Colorconstant.mycolorwhite),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.message, color: Colorconstant.mycolorwhite),
                  Text(
                    "901",
                    style: TextStyle(color: Colorconstant.mycolorwhite),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.share, color: Colorconstant.mycolorwhite),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.autorenew, color: Colorconstant.mycolorwhite),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(shortsdata[index]["image"]!),
                          fit: BoxFit.cover),
                    ),
                    height: 30,
                    width: 30,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 6,
              bottom: 20,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              NetworkImage(shortsdata[index]["image"]!),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "@Reshy_yt",
                          style: TextStyle(color: Colorconstant.mycolorwhite),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colorconstant.mycolorwhite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 30,
                          width: 90,
                          child: Center(child: Text("Subscribe")),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The man has good outfit in the world",
                    style: TextStyle(color: Colorconstant.mycolorwhite),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
