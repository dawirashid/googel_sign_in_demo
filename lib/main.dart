import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: GoogleSignInApp(),
    );
  }
}

class GoogleSignInApp extends StatefulWidget {
  const GoogleSignInApp({Key? key}) : super(key: key);

  @override
  _GoogleSignInAppState createState() => _GoogleSignInAppState();
}

class _GoogleSignInAppState extends State<GoogleSignInApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
