import 'package:flutter/material.dart';

import 'package:medium/Models/Article.dart';
import 'package:medium/Views/Colors.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  final ArticleCardType article_type;
  const ArticleCard({
    required this.article,
    required this.article_type,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      // width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          article_type == ArticleCardType.trending
              ? Container(
                  // width: size.width*0.15,
                  margin: const EdgeInsets.fromLTRB(0, 0, 24, 0),
                  child: Text(
                    '01',
                    style: TextStyle(
                        color: grayColorfortext,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(article.image_url),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      article.author,
                      style: TextStyle(color: secondaryColor, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.7,
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 8),
                                  child: Text(
                                    article.title,
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
                                  article.get_article_publishing_date() +
                                      " · " +
                                      article.get_read_time(),
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    article_type == ArticleCardType.trending
                        ? Container()
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image(
                              width: size.width * 0.2,
                              height: size.width * 0.2 / 1.5,
                              fit: BoxFit.fill,
                              image: const NetworkImage(
                                  "https://i.pinimg.com/564x/b9/28/76/b928767d2ad30030c07ebb3201a98990.jpg"),
                            ),
                          ),
                  ],
                ),
              ),
              article_type != ArticleCardType.home
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: SizedBox(
                        // color: mainColor,
                        width: size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selected for you',
                              style: TextStyle(
                                  color: secondaryColor.withOpacity(0.6),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            // Spacer(),
                            Wrap(
                              spacing: 32,
                              children: [
                                Icon(Icons.bookmark_add_outlined,
                                    color: unselectedLabelColor),
                                Icon(Icons.remove_circle_outline,
                                    color: unselectedLabelColor),
                                Icon(Icons.more_vert,
                                    color: unselectedLabelColor),
                              ],
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
