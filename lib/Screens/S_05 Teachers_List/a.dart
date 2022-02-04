import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/01%20Welcome/welcome_background.dart';
import 'package:flutter_auth/Screens/T_03%20Teacher_Signup/teacher_signup_body.dart';
import 'package:flutter_auth/constants.dart';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);
}

class ListViewApp extends StatefulWidget {
  @override
  _ListViewState createState() => new _ListViewState();
}

class _ListViewState extends State<ListViewApp> {
  final List<Post> items = new List();

  @override
  void initState() {
    super.initState();
    setState(() {
      items.add(new Post(
        1,
        2,
        'Ahmad',
        'Hamza',
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kColor3,
        body: ListView.builder(
            itemCount: items.length,
            padding: const EdgeInsets.all(.0),
            itemBuilder: (context, position) {
              return Column(
                children: <Widget>[
                  Divider(height: 3.0),
                  ListTile(
                    //Ahmad
                    title: Text(
                      '${items[position].title}',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                    //hamza
                    // subtitle: Text(
                    //   '${items[position].body}',
                    //   style: new TextStyle(
                    //     fontSize: 15.0,
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    // ),
                    // leading: Column(
                    //   children: <Widget>[
                    //user1 O
                    // CircleAvatar(
                    //   backgroundColor: Colors.blueAccent,
                    //   radius: 35.0,
                    //   child: Text(
                    //     'User ${items[position].userId}',
                    //     style: TextStyle(
                    //       fontSize: 22.0,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),

                    //-O-
                    // IconButton(
                    //   icon: const Icon(Icons.remove_circle_outline),
                    //   onPressed: () {
                    //     setState(() {
                    //       items.removeAt(position);
                    //     });
                    //   },
                    // ),
                    //     ],
                    //   ),
                    onTap: () => _onTapItem(context, items[position]),
                  ),
                ],
              );
            }),
      ),
    );
  }

  void _onTapItem(BuildContext context, Post post) {
    Scaffold.of(context).showSnackBar(new SnackBar(
        content: new Text(post.id.toString() + ' - ' + post.title)));
  }
}
