import 'package:flutter/material.dart';
import 'package:news_app/api/models/news/news.dart';
import 'package:news_app/api/models/sources/source.dart';
import 'package:news_app/ui/taps_of_news/custom_tab.dart';
import 'package:news_app/ui/news/news_weidget.dart';

class TabsWidget extends StatefulWidget {
  List<Source> sourcesTabs;

  TabsWidget({required this.sourcesTabs});

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.sourcesTabs.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            indicatorColor: Colors.transparent,
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
            tabs: widget.sourcesTabs
                .map((Source) => CustomTabWidget(
                      isSelected:
                          selectedTabIndex == widget.sourcesTabs.indexOf(Source)
                              ? true
                              : false,
                      source: Source,
                    ))
                .toList(),
          ),
          Expanded(child: NewsWeidget(source: widget.sourcesTabs[selectedTabIndex],)),
        ],
      ),
    );
  }
}
