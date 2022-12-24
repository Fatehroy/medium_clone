import 'package:flutter/material.dart';
import 'package:medium/Models/Article.dart';
import 'package:medium/Views/Colors.dart';
import 'package:medium/Views/widgets/articleCard.dart';

class Trends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 18),
      child: Column(
        children: [
          for (int i = 0; i < 6; i++)
            ArticleCard(article: article1,article_type: ArticleCardType.trending,)
        ],
      ),
    );
  }
}

class SearchedArticleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // width: size.width*0.15,
            margin: const EdgeInsets.fromLTRB(0, 0, 24, 0),
            child: Text(
              '01',
              style: TextStyle(
                  color: grayColorfortext,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/236x/35/ec/6a/35ec6a40365ebe25cf1ebc173a857efa.jpg"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    'username',
                    style: TextStyle(color: secondaryColor, fontSize: 14),
                  ),
                ],
              ),
              Container(
                 width: size.width*0.75,
                //  color: mainColor,
                child: Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric( vertical: 8),
                        child: Text(
                          'Awesome Onbarding Page with Flutter Onbarding Page with Flutter',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        '3 days ago · 2 min read',
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
