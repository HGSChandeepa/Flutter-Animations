import 'package:flutter/material.dart';
import 'package:flutter_animations_0/animations/explicit_animations/home_page_anmation.dart';
import 'package:flutter_animations_0/animations/explicit_animations/loading_animation.dart';
import 'package:flutter_animations_0/animations/explicit_animations/rotation_animation.dart';
import 'package:flutter_animations_0/animations/grid_transitions/grid_home_page.dart';
import 'package:flutter_animations_0/animations/grid_transitions/item_details_page.dart';
import 'package:flutter_animations_0/animations/page_transitions/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Animations Example')),
        body: Center(
          child: SplashAnimationMainPage(),
        ),
      ),
    );
  }
}
