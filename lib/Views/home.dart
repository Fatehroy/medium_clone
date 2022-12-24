import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medium/Models/Article.dart';
import 'package:medium/Views/Colors.dart';
import 'package:medium/Views/widgets/articleCard.dart';

class HomePage extends StatelessWidget {
  List tabs = ['Following', 'Flutter', 'Mobile', 'Canada'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: tabs.length + 1,
      child: Scaffold(
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  color: backgroundColor,
                padding: const EdgeInsets.fromLTRB(24, 104, 24, 0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 24,
                          color: secondaryColor,
                          fontWeight: FontWeight.w800),
                    ),
                     Icon(
                        // Icons.notifications_none_rounded,
                        CupertinoIcons.bell,
                        color: unselectedLabelColor,
                      ),
                  ],
                ),
              ),
              ),
              SliverAppBar(
                toolbarHeight: 12,
                elevation: 2,
                backgroundColor: backgroundColor,
                // title: Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 12),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Home',
                //         style: TextStyle(
                //             fontSize: 24,
                //             color: secondaryColor,
                //             fontWeight: FontWeight.bold),
                //       ),
                //       Icon(
                //         Icons.notifications_none_rounded,
                //         color: unselectedLabelColor,
                //       )
                //     ],
                //   ),
                // ),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  isScrollable: true,
                  physics: const BouncingScrollPhysics(),
                  labelColor: secondaryColor,
                  indicatorColor: secondaryColor,
                  unselectedLabelColor: unselectedLabelColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Text(
                      "+",
                      style: TextStyle(color: secondaryColor, fontSize: 16),
                    ),
                    for (var mytab in tabs)
                      Tab(
                        text: mytab,
                      )
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return ArticleCard(
                      article: article1,
                      article_type: ArticleCardType.home,
                    );
                  }),
              // Center(
              //     child: Text(
              //       "mytab",
              //       style: TextStyle(color: secondaryColor, fontSize: 16),
              //     ),
              //   ),
              for (var mytab in tabs)
                Center(
                  child: Text(
                    mytab,
                    style: TextStyle(color: secondaryColor, fontSize: 16),
                  ),
                ),
            ],
          ),
        ),
        backgroundColor: Colors.grey,
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
