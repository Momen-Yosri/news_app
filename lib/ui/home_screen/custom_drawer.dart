import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/style/colors.dart';
import 'package:news_app/style/my_theme_data.dart';
import 'package:news_app/ui/home_screen/drawer_item.dart';

typedef changeCategory = void Function(MenuTap);

enum MenuTap {
  categories,
  settings,
}

class CustomDrawer extends StatefulWidget {
 final Function onSelect;
CustomDrawer({super.key,required this.onSelect});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
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
              widget.onSelect(MenuTap.categories);
            },
          ),
          DrawerItem(
            image: "assets/svg/Icon_settings.svg",
            title: "Settings",
            tap: () {
              widget.onSelect(MenuTap.settings);
            },
          ),
        ],
      ),
    );

  }

}
