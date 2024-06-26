import 'package:flutter/material.dart';
import 'package:konnect/app/icons/icons_paths.dart';

enum AppIcons {
  search,
  notification,
  customs,
  discussionForum,
  gstIcon,
  backArrow,
  discussionForumDark,
  homeDark,
  gstDark,
  profileDark,
  customsDark,
  checkedDark,
}

class AppIcon extends StatelessWidget {
  final AppIcons _appIcon;
  final double? _width;
  final double? _height;
  final BoxFit? _boxFit;

  const AppIcon(
      {super.key,
      required AppIcons appIcon,
      double? width,
      double? height,
      BoxFit? boxFit})
      : _appIcon = appIcon,
        _boxFit = boxFit,
        _width = width,
        _height = height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _getImagePath(),
      width: this._width,
      height: this._height,
      fit: this._boxFit,
    );
  }

  String _getImagePath() {
    switch (_appIcon) {
      case AppIcons.search:
        return IconPaths.iconSearch;
      case AppIcons.notification:
        return IconPaths.iconNotification;
      case AppIcons.customs:
        return IconPaths.customs;
      case AppIcons.discussionForum:
        return IconPaths.discussionForum;
      case AppIcons.gstIcon:
        return IconPaths.gstIcon;
      case AppIcons.backArrow:
        return IconPaths.backArrow;
      case AppIcons.gstDark:
        return IconPaths.gstDark;
      case AppIcons.homeDark:
        return IconPaths.homeDark;
      case AppIcons.profileDark:
        return IconPaths.profileDark;
      case AppIcons.discussionForumDark:
        return IconPaths.discussionForumDark;
      case AppIcons.customsDark:
        return IconPaths.customsDark;
      case AppIcons.checkedDark:
        return IconPaths.checkedDark;
      default:
        return IconPaths.iconNotFound;
    }
  }
}
