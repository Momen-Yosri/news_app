import 'package:flutter/material.dart';
import 'package:news_app/ui/home_screen/home_screen.dart';
import 'package:news_app/style/my_theme_data.dart';
import 'package:news_app/ui/news/detailed_news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        DetailedNews.routeName :(context) =>DetailedNews(),
      },
    );
  }
}
