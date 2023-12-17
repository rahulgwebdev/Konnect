import 'package:flutter/material.dart';

/// this util function returns scaling factor
/// Where base frame size is 390 as per figma design
///
/// TODO: Test all devices, It should work on mobile devices,
/// however in tabs with high density will result very high scale factor,
/// that may distort the UI
double getDeviceWidthScaleFactor(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  final designWidth = 390;
  if (deviceWidth <= designWidth) {
    return 1.0;
  }
  return deviceWidth / designWidth;
}

double getDeviceHeightScaleFactor(BuildContext context) {
  double deviceHeight = MediaQuery.of(context).size.height;
  final designHeight = 844;
  if (deviceHeight <= designHeight) {
    return 1.0;
  }
  return deviceHeight / designHeight;
}
