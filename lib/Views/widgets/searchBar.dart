import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medium/Views/Colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(vertical: 8,),
      margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
      decoration: BoxDecoration(
        color: grayColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Icon(
              // Icons.search,
              CupertinoIcons.search,
              color: unselectedLabelColor,
            ),
          ),
          Text(
            'Search Medium',
            style: TextStyle(
                fontSize: 16,
                color: unselectedLabelColor,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
