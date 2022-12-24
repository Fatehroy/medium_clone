import 'package:flutter/material.dart';
import 'package:medium/Views/Colors.dart';
import 'package:medium/Views/widgets/articleCard.dart';
import 'package:medium/Views/widgets/headline.dart';
import 'package:medium/Views/widgets/recommended.dart';
import 'package:medium/Views/widgets/searchBar.dart';
import 'package:medium/Views/widgets/searchTags.dart';
import 'package:medium/Views/widgets/toFollow.dart';
import 'package:medium/Views/widgets/trends.dart';

class ExplorePage extends StatelessWidget {
  List tabs = ['Following', 'Flutter', 'Mobile', 'Canada'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 104),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 104, 24, 0),
                child: Text(
                  'Explore',
                  style: TextStyle(
                      fontSize: 24,
                      color: secondaryColor,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SearchBar(),
              const SizedBox(height: 16),
              SearchTags(),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 24),
              Headline('TRENDING ON MEDIUM', icon: Icons.trending_up),
              Trends(),
              const Divider(),
              const SizedBox(height: 24),
              Headline('RCOMMENDED FOR YOU', icon: Icons.article_outlined),
              const SizedBox(height: 24),
              Recommended(),
              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 14),
              Headline('WHO TO FOLLOW'),
              const SizedBox(height: 14),
              ToFollow(),
              const SizedBox(
                height: 150,
              )
            ],
          ),
        ),
        backgroundColor: backgroundColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: mainColor,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
