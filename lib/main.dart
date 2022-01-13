import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
  // 1 Initialize google sign in
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context) {
    // 2 add User var
    GoogleSignInAccount? user = _googleSignIn.currentUser;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //3 check if user is null otherwise user is sign in
          title: Text(
              'Google Demo (Logged ' + (user == null ? 'out' : 'in') + ')'),
        ),
        body: Center(
          child: Column(
            children: [
              // 4 ADD elevated button and setState
              ElevatedButton(
                // if the user sign in disable the sign in button
                onPressed:  user != null ? null : () async {
                  await _googleSignIn.signIn();
                  setState(() {});
                },
                child: const Text('Sign In'),
              ),
              ElevatedButton(
                // if the user sign out disable the sign out button
                onPressed: user  == null ? null : () async {
                  await _googleSignIn.signOut();
                  setState(() {});
                },
                child: const Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
