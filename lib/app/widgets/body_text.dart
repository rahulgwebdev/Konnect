import 'package:flutter/material.dart';
import 'package:konnect/app/colors/colors.dart';
import 'package:konnect/app/utils/utils.dart';

class BodyText extends StatelessWidget {
  final String text;
  const BodyText(this.text, {super.key});

  static getBodyTextStyle(BuildContext context, {double? height}) {
    final scaleFactorWidth = getDeviceWidthScaleFactor(context);
    final scaleFactorHeight = getDeviceHeightScaleFactor(context);
    final fontSize = 14 * scaleFactorWidth;
    final lineHeight = (22 / 14) * scaleFactorHeight;
    return TextStyle(
      color: AppColors.onPrimaryColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      height: height ?? lineHeight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getBodyTextStyle(context),
    );
  }
}
