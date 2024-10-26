// item_details_page.dart

import 'package:flutter/material.dart';

class ItemDetailsPage extends StatelessWidget {
  final String item;
  final int index;

  ItemDetailsPage({required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item),
      ),
      body: Center(
        child: Hero(
          tag: 'item_$index',
          flightShuttleBuilder: _flightShuttleBuilder,
          child: Card(
            elevation: 4.0,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  item,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _flightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        double rotationValue = flightDirection == HeroFlightDirection.push
            ? animation.value * 3.14
            : (1 - animation.value) * 3.14;
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..rotateY(rotationValue),
          child: toHeroContext.widget,
        );
      },
    );
  }
}
