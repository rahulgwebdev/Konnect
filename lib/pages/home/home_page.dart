import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:konnect/app/utils/utils.dart';
import 'package:konnect/app/widgets/app_icons.dart';
import 'package:konnect/app/widgets/tile.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScaleFactor = getDeviceWidthScaleFactor(context);
    final heightScaleFactor = getDeviceHeightScaleFactor(context);

    final verticalOffset = 5.0;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: (40 - verticalOffset) * heightScaleFactor,
            horizontal: 20 * widthScaleFactor),
        child: Column(
          children: [
            Tile(
                heading: 'Goods and Service Tax',
                subHeading: 'Positions, articles and videos',
                appIcon: AppIcon(
                  appIcon: AppIcons.gstIcon,
                  width: 32 * widthScaleFactor,
                  height: 32 * widthScaleFactor,
                )),
            Tile(
                heading: 'Customs Duty',
                subHeading: 'Positions, articles and videos',
                appIcon: AppIcon(
                  appIcon: AppIcons.customs,
                  width: 32 * widthScaleFactor,
                  height: 32 * widthScaleFactor,
                )),
            Tile(
                heading: 'Discussion Forum',
                subHeading: 'What’s on your mind?',
                appIcon: AppIcon(
                  appIcon: AppIcons.discussionForum,
                  width: 32 * widthScaleFactor,
                  height: 32 * widthScaleFactor,
                )),
            SizedBox(height: 25 * widthScaleFactor),
            Row(
              children: [
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 22 / 14),
                      children: [
                        TextSpan(text: 'Feel free to share your '),
                        TextSpan(
                          text: 'feedback',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                            text:
                                ' to improve Konnect or get insights on a specific issue.'),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
