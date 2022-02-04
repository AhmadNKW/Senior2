// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/01%20Welcome/welcome_background.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/a.dart';
import 'package:flutter_auth/components/rounded_button2.dart';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);
}

class TeachersListBody extends StatefulWidget {
  @override
  State<TeachersListBody> createState() => _TeachersListBodyState();
}

@override
void initState() {}

class _TeachersListBodyState extends State<TeachersListBody> {
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
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  width: 350,
                  padding: EdgeInsetsDirectional.all(22),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          offset: Offset(0, 0),
                          color: Colors.grey.withOpacity(0.8),
                        )
                      ]),
                  child: Column(
                    children: [
                      //إختر الدرجة التعليمية رجاءً
                      Text(
                        "إختر مادة رجاءً ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: size.height * 0.04),
                      RoundedButton2(
                          text: "asd  ",
                          x: 45,
                          y: 90,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ListViewApp();
                                },
                              ),
                            );
                          }),

                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: items.length,
                              padding: const EdgeInsets.all(15.0),
                              itemBuilder: (context, position) {
                                return Column(
                                  children: <Widget>[
                                    Divider(height: 5.0),
                                    ListTile(
                                      //Ahmad
                                      title: Text(
                                        '${items[position].title}',
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          color: Colors.deepOrangeAccent,
                                        ),
                                      ),
                                      onTap: () =>
                                          _onTapItem(context, items[position]),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void _onTapItem(BuildContext context, Post post) {
  Scaffold.of(context).showSnackBar(
      new SnackBar(content: new Text(post.id.toString() + ' - ' + post.title)));
}
