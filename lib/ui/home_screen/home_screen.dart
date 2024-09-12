import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/api/api_manger.dart';
import 'package:news_app/api/models/sources/sources_response.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/style/colors.dart';
import 'package:news_app/ui/categories/category_news.dart';
import 'package:news_app/ui/drawer/custom_drawer.dart';
import 'package:news_app/ui/drawer/drawer_tabs/categories_tab.dart';
import 'package:news_app/ui/drawer/drawer_tabs/settings_tab.dart';
import 'package:news_app/ui/home_screen/widgets/custom_search_bar.dart';
import 'package:news_app/ui/home_screen/widgets/search_delegate.dart';
import 'package:news_app/ui/taps_of_news/tab_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Widget selectedTab = CategoriesTab();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            color: AppColors.whiteColor,
            child: Image.asset(
              "assets/pattern.png",
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            )),
        Scaffold(
          backgroundColor: Colors.transparent,
          drawer: CustomDrawer(
            onSelect: onDrawerTabPress,
          ),
          appBar: AppBar(
            title: Text(SelectedDrawerItem ==1?"Settings":selectedCategory!=null?selectedCategory!.titleID:
              "News App",
                style: Theme.of(context).textTheme.titleMedium),
                actions: [
                  Visibility(visible: selectedCategory==null?false:true,
                    child: IconButton(
                      
                      icon: Icon(Icons.search,size: 30,),
                      onPressed: (){
                        showSearch(context: context, delegate: DelegateTab());
                      },
                      ),
                  ),SizedBox(width: 12,),]
          ),
          body:SelectedDrawerItem==1?
          SettingsTab():
          selectedCategory==null?
          CategoriesTab(onCategoryPress:onCategoryPress ,):CategoryNews(titleID: selectedCategory!.titleID,),
        )
      ],
    );
  }
  CategoryModel? selectedCategory;
  void onCategoryPress ( CategoryModel newCategory,){
setState(() {
selectedCategory = newCategory;
});
  }
  int SelectedDrawerItem =0;
  void onDrawerTabPress(int newTabDrawer){
    setState(() {
SelectedDrawerItem = newTabDrawer;
selectedCategory = null;   
Navigator.pop(context);
  });
  }
  }
