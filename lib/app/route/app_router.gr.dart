// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:konnect/pages/home/customs_page.dart' as _i1;
import 'package:konnect/pages/home/dashboard_route.dart' as _i2;
import 'package:konnect/pages/home/discussion_forum_page.dart' as _i3;
import 'package:konnect/pages/home/gst_page.dart' as _i5;
import 'package:konnect/pages/home/home_page.dart' as _i6;
import 'package:konnect/pages/home/profile_page.dart' as _i7;
import 'package:konnect/pages/sign_up/final_step.dart' as _i4;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    CustomsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CustomsPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardRoute(),
      );
    },
    DiscussionForumRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DiscussionForumPage(),
      );
    },
    FinalStep.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FinalStep(),
      );
    },
    GstRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.GstPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomsPage]
class CustomsRoute extends _i8.PageRouteInfo<void> {
  const CustomsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CustomsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardRoute]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DiscussionForumPage]
class DiscussionForumRoute extends _i8.PageRouteInfo<void> {
  const DiscussionForumRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DiscussionForumRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscussionForumRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FinalStep]
class FinalStep extends _i8.PageRouteInfo<void> {
  const FinalStep({List<_i8.PageRouteInfo>? children})
      : super(
          FinalStep.name,
          initialChildren: children,
        );

  static const String name = 'FinalStep';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.GstPage]
class GstRoute extends _i8.PageRouteInfo<void> {
  const GstRoute({List<_i8.PageRouteInfo>? children})
      : super(
          GstRoute.name,
          initialChildren: children,
        );

  static const String name = 'GstRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
