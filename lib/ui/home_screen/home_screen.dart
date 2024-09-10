import 'package:flutter/material.dart';
import 'package:news_app/api/api_manger.dart';
import 'package:news_app/api/models/sources/sources_response.dart';
import 'package:news_app/style/colors.dart';
import 'package:news_app/ui/categories/category_news.dart';
import 'package:news_app/ui/home_screen/custom_drawer.dart';
import 'package:news_app/ui/drawer_tabs/categories_tab.dart';
import 'package:news_app/ui/drawer_tabs/settings_tab.dart';
import 'package:news_app/ui/taps_of_news/tab_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget selectedTab = CategoriesTab();

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
            onSelect: _onTabSelected,
          ),
          appBar: AppBar(
            title: Text("News App",
                style: Theme.of(context).textTheme.titleMedium),
          ),
          body:CategoriesTab(),
        )
      ],
    );
  }

  void _onTabSelected(int index) {
    // Navigate to selected tab and update selectedTab state
    print("Tab");
    setState(() {
      selectedTab = index == 0 ? CategoriesTab() : SettingsTab();
    });
  }
}
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//             color: AppColors.whiteColor,
//             child: Image.asset(
//               "assets/pattern.png",
//               fit: BoxFit.fill,
//               width: double.infinity,
//               height: double.infinity,
//             )),
//         Scaffold(
//           backgroundColor: Colors.transparent,
//           drawer: CustomDrawer(on),
//           appBar: AppBar(
//             title: Text("News App",
//                 style: Theme.of(context).textTheme.titleMedium),
//           ),
//           body: selectedTab,
//         )
//       ],
//     );
//   }

//       SelectedDrawerItem(MenuTap tab) {
//     MenuTap _selectedTab;
//     _selectedTab=tab;

//     Navigator.pop(context);

//     selectedTab= _selectedTab==;
//   }
// }
