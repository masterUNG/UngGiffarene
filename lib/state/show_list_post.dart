import 'package:flutter/material.dart';
import 'package:unggiffarine/state/add_post.dart';

class ShowListPost extends StatefulWidget {
  @override
  _ShowListPostState createState() => _ShowListPostState();
}

class _ShowListPostState extends State<ShowListPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This is show List Post'),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddPost(),)),
        child: Text('Post'),
      ),
    );
  }
}