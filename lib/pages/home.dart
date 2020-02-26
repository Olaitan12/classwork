import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get userPosts => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: getPosts(),
          )
        ],
      ),
    );
  }

  List<Widget> getPosts() {
    List<Widget> posts = [];
    for (List post in userPosts) {
      posts.add(getPost(post));
    }
    return posts;
  }

  Widget getPost(List post) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      // child: CircleAvatar(backgroundImage: post.user.profilePicture,),
                    ),
                    // Text(post.user.username,)
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}