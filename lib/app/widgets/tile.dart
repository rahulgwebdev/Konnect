import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  color: Colors.white,
                ),
                child: Center(
                  child: _appIcon,
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _heading,
                    style: TextStyle(
                      color: Color(0xFF161616),
                      fontSize: 17,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 13),
                  Text(
                    _subHeading,
                    style: TextStyle(
                      color: Color(0xFF161616),
                      fontSize: 13,
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
