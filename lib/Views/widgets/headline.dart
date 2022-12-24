import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medium/Views/Colors.dart';

class Headline extends StatelessWidget {
  Headline(this.title, {this.icon});
  String title;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon == null ? Container() : Icon(icon),
          icon == null ? Container():const SizedBox(width: 12),
          Text(
            title,
            style: TextStyle(
                fontSize: 14, color: secondaryColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
