import 'package:flutter/material.dart';

const _textColors = [
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white
];
const _colorNames = ['pink', 'green', 'yellow', 'blue', 'orange'];

enum TargetType { color, number }

class TargetData {
  TargetData({required this.type, required this.index});

  final TargetType type;
  final int index;

  String get text => type == TargetType.color
      ? 'COLOR ${_colorNames[index]}'
      : 'NUMBER $index';

  Color get color => _textColors[index];
}

class Target extends StatelessWidget {
  const Target({
    Key? key,
    required this.color,
    required this.textColor,
    required this.text,
  }) : super(key: key);
  final Color color;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
