import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:konnect/app/colors/colors.dart';
import 'package:konnect/app/route/app_router.gr.dart';

import '../../app/widgets/app_icons.dart';

@RoutePage()
class DashboardRoute extends StatelessWidget {
  const DashboardRoute({super.key});

  @override
  Widget build(BuildContext context) {
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
            bottom: BorderSide(color: Color(0xFFCECECE), width: 0.5),
          ),
          automaticallyImplyLeading: false,
          title: Text(
            'Konnect',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 22,
              color: AppColors.logoColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              icon: AppIcon(appIcon: AppIcons.search, width: 24, height: 24),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
            IconButton(
              icon: AppIcon(
                  appIcon: AppIcons.notification, width: 24, height: 24),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        body: SafeArea(child: child),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: AutoTabsRouter.of(context).activeIndex,
          onTap: (value) {
            AutoTabsRouter.of(context).setActiveIndex(value);
          },
          items: const [
            BottomNavigationBarItem(
              icon: AppIcon(appIcon: AppIcons.homeDark, width: 30, height: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: AppIcon(
                  appIcon: AppIcons.discussionForumDark, width: 30, height: 30),
              label: 'Discussion forum ',
            ),
            BottomNavigationBarItem(
              icon:
                  AppIcon(appIcon: AppIcons.customsDark, width: 30, height: 30),
              label: 'Customs',
            ),
            BottomNavigationBarItem(
              icon: AppIcon(appIcon: AppIcons.gstDark, width: 30, height: 30),
              label: 'Gst',
            ),
            BottomNavigationBarItem(
              icon:
                  AppIcon(appIcon: AppIcons.profileDark, width: 30, height: 30),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
