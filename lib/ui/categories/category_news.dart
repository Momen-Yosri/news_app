import 'package:flutter/material.dart';
import 'package:news_app/api/api_manger.dart';
import 'package:news_app/api/models/sources/sources_response.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/ui/taps_of_news/tab_widget.dart';

class CategoryNews extends StatelessWidget {
 String titleID;
    CategoryNews({super.key,required this.titleID});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse?>(
            future: ApiManger.getSources(titleID),
            builder: (context, snapShot) {
              if (snapShot.data?.status != "ok") {
                return Column(
                  children: [
                    Text(snapShot.data?.status ?? ''),
                    ElevatedButton(
                      onPressed: () => ApiManger.getSources(CategoryModel.cards[0].titleID),
                      child: Text("Retry"),
                    )
                  ],
                );
              } else if (snapShot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapShot.hasError) {
                return Column(
                  children: [
                    Text("Error: ${snapShot.error}"),
                    ElevatedButton(
                      onPressed: () {
                        print(snapShot.error.toString());
                      },
                      child: Text("Retry"),
                    )
                  ],
                );
              }
              var sourceList = snapShot.data?.sources ?? [];
              return TabsWidget(sourcesTabs: sourceList);
            },
          );
  }
}