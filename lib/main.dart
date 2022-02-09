import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/01%20Welcome/Welcome_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        textTheme: GoogleFonts.tajawalTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kColor3,
      ),
      home: Directionality(
        // add this
        textDirection: TextDirection.rtl, // set this property
        child: WelcomeScreen(),
      ),
    );
  }
}
