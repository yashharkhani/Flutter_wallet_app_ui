import 'package:flutter/material.dart';
import 'package:wallet_ui/homepage.dart';

void main() {
  runApp(MyApp());
}

// dribble design
// https://dribbble.com/shots/7036184/attachments/36347?mode=media

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet app ui',
      theme: ThemeData(fontFamily: 'Poppins_Regular'),
      home: Home(),
    );
  }
}
