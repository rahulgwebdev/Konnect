import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:konnect/app/utils/utils.dart';
import 'package:konnect/app/widgets/widgets.dart';

import '../../app/colors/colors.dart';
import '../../app/route/app_router.gr.dart';
import 'widgets/phone_number_input_field.dart';
import 'widgets/text_area_input_field.dart';

@RoutePage()
class FinalStep extends StatefulWidget {
  const FinalStep({super.key});

  @override
  State<FinalStep> createState() => _FinalStepState();
}

class _FinalStepState extends State<FinalStep> {
  @override
  Widget build(BuildContext context) {
    final scaleFactorWidth = getDeviceWidthScaleFactor(context);
    final scaleFactorHeight = getDeviceHeightScaleFactor(context);
    final fontOffset = 5;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.primaryColor.withOpacity(0.1),
        shape:
            Border(bottom: BorderSide(color: AppColors.grayColor, width: 0.5)),
        leadingWidth: (56 + 12) * scaleFactorWidth,
        leading: IconButton(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          iconSize: 24 * scaleFactorWidth,
          icon: AppIcon(
              appIcon: AppIcons.backArrow,
              width: 24 * scaleFactorWidth,
              height: 24 * scaleFactorWidth),
          tooltip: 'Back',
          onPressed: null,
        ),
        centerTitle: false,
        titleSpacing: -8 * scaleFactorWidth,
        title: Text(
          'Final Step',
          style: TextStyle(
              fontSize: 17 * scaleFactorWidth,
              fontWeight: FontWeight.w400,
              height: 0),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: (40 - fontOffset - fontOffset) * scaleFactorHeight,
            left: 20 * scaleFactorWidth,
            right: 20 * scaleFactorWidth,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyText(
                  'As a dedicated community of tax enthusiasts, we would love to know more about you.'),
              Container(
                padding: EdgeInsets.only(
                    top: (40 - fontOffset) * scaleFactorHeight,
                    bottom: (25 - fontOffset) * scaleFactorHeight),
                child: TextAreaInputField(),
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: (30 - fontOffset) * scaleFactorHeight),
                child: PhoneNumberInputField(),
              ),
              checkBox('Show phone number on profile',
                  scaleFactorWidth: scaleFactorWidth),
              SizedBox(height: 15 * scaleFactorWidth),
              checkBox('Show email on profile',
                  scaleFactorWidth: scaleFactorWidth),
              SizedBox(
                  height: (143 - fontOffset - fontOffset) * scaleFactorHeight),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: (20) * scaleFactorHeight),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0, // Underline thickness
                    ))),
                    child: BodyText('Skip for now'),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    context.router.push(DashboardRoute());
                  },
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Text(
                      'TAKE ME INSIDE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF161616),
                        fontSize: 18 * scaleFactorWidth,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget checkBox(String text, {required double scaleFactorWidth}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Row(
        children: [
          Container(
            width: 14 * scaleFactorWidth,
            height: 14 * scaleFactorWidth,
            decoration: ShapeDecoration(
              color: isChecked ? AppColors.logoColor : Colors.transparent,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: AppColors.logoColor),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 2 * scaleFactorWidth,
                  horizontal: 2 * scaleFactorWidth),
              child: isChecked
                  ? AppIcon(
                      appIcon: AppIcons.checkedDark,
                      width: double.infinity,
                      height: double.infinity,
                      boxFit: BoxFit.fill,
                    )
                  : null,
            ),
          ),
          SizedBox(width: 10 * scaleFactorWidth),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14 * scaleFactorWidth,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w400,
              height: 0.10,
            ),
          ),
        ],
      ),
    );
  }

  bool isChecked = false;
}
