import 'package:flutter/material.dart';
import 'package:news_app/api/api_manger.dart';
import 'package:news_app/api/models/sources/source.dart';
import 'package:news_app/ui/news/detailed_news.dart';
import 'package:news_app/ui/news/news_item.dart';

class NewsWeidget extends StatefulWidget {
  Source source;
  NewsWeidget({required this.source});

  @override
  State<NewsWeidget> createState() => _NewsWeidgetState();
}

class _NewsWeidgetState extends State<NewsWeidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManger.getNewsWithId(widget.source.id ?? ''),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: ElevatedButton(
                child: Text('An error occurred: ${snapshot.error}'),
                onPressed: () {
                  setState(() {
                    ApiManger.getNewsWithId(widget.source.id ?? '');
                  });
                },
              ),
            );
          } else if (snapshot.data?.status != 'ok') {}
          var newsList = snapshot.data?.articles!;
          return ListView.builder(
            itemCount: newsList?.length ?? 0,
            itemBuilder: (context, index) {
              return NewsItem(article: newsList![index]);
            },
          );
        });
  }
  
}
