import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessaging extends StatefulWidget {

  FirebaseMessaging() : super();

  final String title = 'Firebase Messaging';


  @override

  State<StatefulWidget> createState()=> FirebaseMessagingState();

  getToken() {}

  void configure({Future<Null> Function(Map<String, dynamic> message)
  onMessage, Future<Null> Function(Map<String, dynamic> message)
  onLaunch, Future<Null> Function(Map<String, dynamic> message)
  onResume }) {}
}

class FirebaseMessagingState extends State <FirebaseMessaging>{

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  _getToken() {
    _firebaseMessaging.getToken().then((deviceToken){
      print ('Device Token: $deviceToken');
    }
    );
  }

  _configureFirebaseListeners() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async{
        print('onMessage: $message');
      },
      onLaunch: (Map<String, dynamic> message) async{
        print('onLaunch: $message');
      },
      onResume: (Map<String, dynamic> message) async{
        print('onResume: $message');
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _getToken();
    _configureFirebaseListeners();
  }


  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }

}