import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:konnect/app/colors/colors.dart';
import 'package:konnect/app/route/app_router.gr.dart';
import 'package:konnect/app/utils/utils.dart';
import 'package:konnect/app/widgets/widgets.dart';

@RoutePage()
class DashboardRoute extends StatelessWidget {
  const DashboardRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScaleFactor = getDeviceWidthScaleFactor(context);

    return AutoTabsRouter(
      routes: [
        HomeRoute(),
        DiscussionForumRoute(),
        CustomsRoute(),
        GstRoute(),
        ProfileRoute()
      ],
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          surfaceTintColor: AppColors.primaryColor.withOpacity(0.1),
          shape: Border(
            bottom: BorderSide(color: AppColors.grayColor, width: 0.5),
          ),
          automaticallyImplyLeading: false,
          title: Text(
            'Konnect',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 22 * widthScaleFactor,
              color: AppColors.logoColor,
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          actions: [
            IconButton(
              icon: AppIcon(
                  appIcon: AppIcons.search,
                  width: 24 * widthScaleFactor,
                  height: 24 * widthScaleFactor),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Stack(children: [
                Center(
                  child: IconButton(
                    icon: AppIcon(
                        appIcon: AppIcons.notification,
                        width: 24 * widthScaleFactor,
                        height: 24 * widthScaleFactor),
                    tooltip: 'Open shopping cart',
                    onPressed: () {
                      // handle the press
                    },
                  ),
                ),
                Positioned(
                  top: 16.5,
                  right: 10.5,
                  child: Container(
                    decoration: ShapeDecoration(
                        color: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(500.0),
                        )),
                    width: 11.35,
                    height: 11.35,
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Color(0xFF161616),
                          fontSize: 8,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
        body: SafeArea(child: child),
        // body: child,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: AppColors.grayColor, width: 0.5))),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: AutoTabsRouter.of(context).activeIndex,
            onTap: (value) {
              AutoTabsRouter.of(context).setActiveIndex(value);
            },
            items: [
              BottomNavigationBarItem(
                icon: AppIcon(
                    appIcon: AppIcons.homeDark,
                    width: 30 * widthScaleFactor,
                    height: 30 * widthScaleFactor),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: AppIcon(
                    appIcon: AppIcons.discussionForumDark,
                    width: 30 * widthScaleFactor,
                    height: 30 * widthScaleFactor),
                label: 'Discussion forum ',
              ),
              BottomNavigationBarItem(
                icon: AppIcon(
                    appIcon: AppIcons.customsDark,
                    width: 30 * widthScaleFactor,
                    height: 30 * widthScaleFactor),
                label: 'Customs',
              ),
              BottomNavigationBarItem(
                icon: AppIcon(
                    appIcon: AppIcons.gstDark,
                    width: 30 * widthScaleFactor,
                    height: 30 * widthScaleFactor),
                label: 'Gst',
              ),
              BottomNavigationBarItem(
                icon: AppIcon(
                    appIcon: AppIcons.profileDark,
                    width: 30 * widthScaleFactor,
                    height: 30 * widthScaleFactor),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
