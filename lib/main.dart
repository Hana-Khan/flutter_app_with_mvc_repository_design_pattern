import 'package:flutter/material.dart';
import 'package:user_information/views/screen_user_information.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserInformationScreen(),
    );
  }
}
