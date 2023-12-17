import 'package:flutter/material.dart';
import 'package:konnect/app/colors/colors.dart';
import 'package:konnect/app/utils/utils.dart';

import 'app_icons.dart';

class Tile extends StatelessWidget {
  final AppIcon _appIcon;
  final String _heading;
  final String _subHeading;
  const Tile({
    super.key,
    required AppIcon appIcon,
    required String heading,
    required String subHeading,
  })  : _appIcon = appIcon,
        _subHeading = subHeading,
        _heading = heading;

  @override
  Widget build(BuildContext context) {
    final widthScaleFactor = getDeviceWidthScaleFactor(context);
    final heightScaleFactor = getDeviceHeightScaleFactor(context);
    return Padding(
      padding: EdgeInsets.only(bottom: 15 * heightScaleFactor),
      child: Semantics(
        button: true,
        child: Container(
          decoration: ShapeDecoration(
            color: Color(0xFFF5F5F5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          padding: EdgeInsets.symmetric(
              horizontal: 15 * widthScaleFactor,
              vertical: 20 * heightScaleFactor),
          child: Row(
            children: [
              Container(
                width: 60 * widthScaleFactor,
                height: 60 * widthScaleFactor,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  color: Colors.white,
                ),
                child: Center(
                  child: _appIcon,
                ),
              ),
              SizedBox(width: 15 * widthScaleFactor),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _heading,
                    style: TextStyle(
                        color: AppColors.onPrimaryColor,
                        fontSize: 17 * widthScaleFactor,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        height: 0),
                  ),
                  SizedBox(height: (13 - 5) * widthScaleFactor),
                  Text(
                    _subHeading,
                    style: TextStyle(
                      color: AppColors.onPrimaryColor,
                      fontSize: 13 * widthScaleFactor,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
