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
