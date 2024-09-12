import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/style/colors.dart';
import 'package:news_app/style/my_theme_data.dart';
import 'package:news_app/ui/drawer/drawer_item.dart';
import 'package:news_app/ui/drawer/drawer_tabs/categories_tab.dart';

class CustomDrawer extends StatelessWidget {
   Function onSelect;
   int Categories =0;
   int Settings =1;
  CustomDrawer({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            height: height * 0.13,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Text(
              "News App!",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          DrawerItem(
            image: "assets/svg/Icon_categories.svg",
            title: "categories",
            tap: () {
              onSelect(Categories);
            },
          ),
          DrawerItem(
            image: "assets/svg/Icon_settings.svg",
            title: "Settings",
            tap: () {
            onSelect(Settings);
            },
          ),
        ],
      ),
    );
  }
}
