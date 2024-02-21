import 'package:flutter/material.dart';
import 'package:youtube/utlis/db.dart';

class history extends StatelessWidget {
  const history({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 130,
              child: Image.network(
                subscriptionHistory[index]["image"]!,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              subscriptionHistory[index]["title"]!,
            ),
            Text(
              subscriptionHistory[index]["subtitle"]!,
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
