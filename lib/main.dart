import 'package:flutter/material.dart';
import 'package:project_subject/Screens/screen_work.dart';

void main() {
  runApp(HomePageBasic());
}

class HomePageBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenWork(),
    );
  }
}
