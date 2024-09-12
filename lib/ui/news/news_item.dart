import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/api/models/news/article.dart';
import 'package:news_app/api/models/news/news.dart';
import 'package:news_app/ui/news/detailed_news.dart';

class NewsItem extends StatelessWidget {
Article article;
NewsItem({required this.article});
  @override
  Widget build(BuildContext context) {
    debugPrint(article.urlToImage);
    return InkWell(onTap: () =>   Navigator.pushNamed(context, DetailedNews.routeName,arguments: article)
,
      child: Container(  margin: EdgeInsets.all(25),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           ClipRRect(borderRadius:BorderRadius.circular(15) ,
            child: CachedNetworkImage(
              width: double.infinity,
              fit: BoxFit.fill,
         imageUrl: article.urlToImage??"",
         progressIndicatorBuilder: (context, url, downloadProgress) => 
           CircularProgressIndicator(value: downloadProgress.progress),
         errorWidget: (context, url, error) => Icon(Icons.error),
      ), 
           ),
        Text(article.author??'',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),),
        Text(article.title??'',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff42505C)),),
        Text(article.publishedAt??'',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),textAlign: TextAlign.end,),
        ],),
      ),
    );
  }
}