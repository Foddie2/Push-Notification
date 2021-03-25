import 'package:flutter/material.dart';
import 'FirebaseMessaging.dart';
import 'FirebaseMessaging/FirebaseMessaging.dart';

void main() {
  runApp(HomeApp()
  );
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirebaseMessaging(),
    );
  }
}

class FirebaseMessaging extends StatefulWidget {
  @override
  _FirebaseMessagingState createState() => _FirebaseMessagingState();
}

class _FirebaseMessagingState extends State<FirebaseMessaging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Test'),
      ),
    );
  }
}

