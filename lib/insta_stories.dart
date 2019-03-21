import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );

  final stories = Expanded(
      child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 6,
    itemBuilder: (context, index) => new Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://pbs.twimg.com/profile_images/948831511482118146/1C1h5GTO_400x400.jpg"),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            index == 0
                ? Positioned(
                    right: 10,
                    child: CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          size: 10,
                          color: Colors.white,
                        )))
                : Container(),
          ],
        ),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            topText,
            stories,
          ],
        ));
  }
}
