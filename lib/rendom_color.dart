import 'dart:math';

import 'package:flutter/cupertino.dart';

class RandomColor extends StatefulWidget {
  @override
  _RandomColorState createState() => _RandomColorState();
}

class _RandomColorState extends State<RandomColor> {
  Color _currentColor;

  @override
  void initState() {
    super.initState();
    _currentColor = _generateRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentColor = _generateRandomColor();
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        color: _currentColor,
      ),
    );
  }

  Color _generateRandomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1.0);
  }
}
