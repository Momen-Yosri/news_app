import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/style/my_theme_data.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.image, required this.title, required this.tap});
  final String title;
  final String image;
  final Function tap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        tap();
      },
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            SvgPicture.asset(image),
            const SizedBox(
              width: 16,
            ),
            Text(title,
                style: MyThemeData.lightTheme.textTheme.titleLarge!
                    .copyWith(fontSize: 24))
          ],
        ),
      ),
    );
  }
}
