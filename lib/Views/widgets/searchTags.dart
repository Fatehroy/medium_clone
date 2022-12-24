import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:medium/Views/Colors.dart';

class SearchTags extends StatelessWidget {
  List searchsuggestion = [
    'UX',
    'visual Design',
    'JavaScript',
    'Dart',
    'Pc',
    'Laptop'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            for (var keyword in searchsuggestion)
              Container(
                margin: const EdgeInsets.fromLTRB(0,0,8,0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24), // radius of 10
                      color: grayColor // green as background color
                      ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),    
                  child: Text(keyword))
          ],
        ),
      ),
    );
  }
}
