import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

/*
* to watch the files's system edits and rebuild as necessary
  
  dart run build_runner watch

to run build_runner just once
  
  dart run build_runner build
*/
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: FinalStep.page, initial: true),
        AutoRoute(
          page: DashboardRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: DiscussionForumRoute.page),
            AutoRoute(page: CustomsRoute.page),
            AutoRoute(page: GstRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
