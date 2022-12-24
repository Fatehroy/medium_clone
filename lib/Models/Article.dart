import 'package:intl/intl.dart';

enum ArticleCardType { home, trending, recommended }

class Article {
  String id;

  String image_url;
  String author;
  String title;

  int? claps;
  int? word_count;

  double reading_time;

  String? last_modified_at;
  String published_at;

  Article({
    required this.id,
    required this.image_url,
    required this.author,
    required this.title,
    this.claps,
    this.word_count,
    required this.reading_time,
    this.last_modified_at,
    required this.published_at,
  });
  String get_read_time(){
    return "${reading_time.toInt()} min read";
  }
  String get_article_publishing_date() {
    DateTime today = DateTime.now();
    DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
    DateTime publishing_date = dateFormat.parse(published_at);

    final difference = today.difference(publishing_date);

    // print(today);
    // print(publishing_date);
    if (difference.inMinutes <= 59) {
      return difference.inMinutes.toString() + ' minutes ago';
    } else if (difference.inHours <= 24) {
      return (difference.inHours).toString() + ' hours ago';
    } else if (difference.inDays <= 6) {
      if (difference.inDays == 1) {
        return difference.inDays.toString() + ' day ago';
      } else {
        return difference.inDays.toString() + ' days ago';
      }
    } else if (today.year == publishing_date.year) {
      return DateFormat('MMM dd').format(publishing_date);
    } else {
      return DateFormat('MMM dd, yyyy').format(publishing_date);
    }
  }
}

Article article1 = Article(
    id: "01",
    image_url:
        "https://i.pinimg.com/236x/a2/df/3f/a2df3fba5e2c5c5859126fa5210f6c29.jpg",
    author: "han hyo joo",
    title:
        "22 Tips That Helped Me Save Time, Money, and Improve My Mental Health in 2022",
    reading_time: 4.5,
    published_at: "2022-12-15 10:45:10");
