import 'package:flutter/material.dart';

class Topic extends StatelessWidget {
  String title;
  Color color;

  Topic({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(8),
      width: 86,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: this.color,
      ),
      child: Text(
        this.title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
