import 'package:flutter/material.dart';
import 'package:flutter_animations_0/animations/explicit_animations/home_page_anmation.dart';
import 'package:flutter_animations_0/animations/explicit_animations/loading_animation.dart';
import 'package:flutter_animations_0/animations/explicit_animations/rotation_animation.dart';
import 'package:flutter_animations_0/animations/grid_transitions/grid_home_page.dart';
import 'package:flutter_animations_0/animations/grid_transitions/item_details_page.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_box.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_button.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_container.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_list.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_opacity.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_paddding.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_physical_model.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_position.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_switcher.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_textstyle.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_theme.dart';
import 'package:flutter_animations_0/animations/implicit_animations/animated_tween_example.dart';
import 'package:flutter_animations_0/animations/implicit_animations/slide_transition.dart';
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
