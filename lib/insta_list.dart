import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? SizedBox(child: InstaStories(), height: deviceSize.height * 0.15)
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://pbs.twimg.com/profile_images/962540309728043008/StgjmDIc_400x400.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "LittleWord",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: null,
                          //    mainAxisAlignment: MainAxisAlignment.end,
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Image.network(
                      "https://pbs.twimg.com/profile_images/962540309728043008/StgjmDIc_400x400.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.heart),
                        SizedBox(width:15),
                        Icon(FontAwesomeIcons.comment),
                        SizedBox(width:15),
                        Icon(FontAwesomeIcons.paperPlane),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Icon(FontAwesomeIcons.bookmark),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Liked by 7 people",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://pbs.twimg.com/profile_images/948831511482118146/1C1h5GTO_400x400.jpg")),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment..."),
                        )),
                      ],
                    ),
                  ),
                ],
              ));
  }
}
