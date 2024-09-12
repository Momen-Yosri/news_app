import 'package:flutter/material.dart';
import 'package:news_app/api/models/news/article.dart';
import 'package:news_app/ui/news/news_item.dart';

class DetailedNews extends StatelessWidget {
  static const String routeName = "DetailedNews";
  DetailedNews({super.key,});

  @override
  Widget build(BuildContext context) {
    var articleArgument = ModalRoute.of(context)!.settings.arguments as Article;
    return Scaffold(
      appBar: AppBar(),
      body: 
      Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Image.network(articleArgument.urlToImage??''),
        Text(articleArgument.title??''),
        Text(articleArgument.title??''),
        Container(width:MediaQuery.of(context).size.width*0.9 ,
        height:MediaQuery.of(context).size.height*0.4  ,
        
          child: Text(articleArgument.content??'')),
      ],),
    );
  }
}