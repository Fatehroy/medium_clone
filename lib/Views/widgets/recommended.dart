import 'package:flutter/material.dart';
import 'package:medium/Models/Article.dart';
import 'package:medium/Views/Colors.dart';
import 'package:medium/Views/widgets/articleCard.dart';

class Recommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [for (int i = 0; i < 5; i++) ArticleCard(article: article1,article_type: ArticleCardType.recommended,)],
    );
  }
}

class RecommendedArtilce extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(  
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
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
              ),
              Container(
                width: size.width-48,
                //  color: mainColor,
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                             padding: const EdgeInsets.fromLTRB( 0,0,8,8),
                            child: Text(
                              'Awesome Onbarding Page with Flutter',
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image(
                        width: size.width * 0.22,
                        height: size.width * 0.22 / 1.5,
                        fit: BoxFit.fill,
                        image: const NetworkImage(
                            "https://i.pinimg.com/564x/b9/28/76/b928767d2ad30030c07ebb3201a98990.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
