import 'package:flutter/material.dart';
import 'dart:math';

class CustomAnimatedBox extends StatefulWidget {
  @override
  _CustomAnimatedBoxState createState() => _CustomAnimatedBoxState();
}

class _CustomAnimatedBoxState extends State<CustomAnimatedBox> {
  bool _isExpanded = false;

  // Random number generator for random properties
  final Random _random = Random();

  // Initial properties
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.red;
  double _borderRadius = 0.0;
  Alignment _alignment = Alignment.center;

  // Method to toggle the box state
  void _toggleBox() {
    setState(() {
      _isExpanded = !_isExpanded;
      _width = _isExpanded ? 200.0 : 100.0;
      _height = _isExpanded ? 200.0 : 100.0;
      _color = _isExpanded ? Colors.blue : Colors.red;
      _borderRadius = _isExpanded ? 50.0 : 0.0;
      _alignment = _isExpanded ? Alignment.bottomRight : Alignment.topLeft;
    });
  }

  // Method to randomize properties
  void _randomizeProperties() {
    setState(() {
      _width = 100.0 + _random.nextInt(200);
      _height = 100.0 + _random.nextInt(200);
      _color = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      );
      _borderRadius = _random.nextDouble() * 100;
      _alignment = Alignment(
        _random.nextDouble() * 2 - 1,
        _random.nextDouble() * 2 - 1,
      );
    });
  }

  // Method to reset properties
  void _resetProperties() {
    setState(() {
      _width = 100.0;
      _height = 100.0;
      _color = Colors.red;
      _borderRadius = 0.0;
      _alignment = Alignment.center;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: _toggleBox,
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(_borderRadius),
            ),
            alignment: _alignment,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: 50),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _randomizeProperties,
          child: Text('Randomize Properties'),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _resetProperties,
          child: Text('Reset Properties'),
        ),
      ],
    );
  }
}
