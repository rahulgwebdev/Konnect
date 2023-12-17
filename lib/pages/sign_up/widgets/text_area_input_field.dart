import 'package:flutter/material.dart';
import 'package:konnect/app/colors/colors.dart';
import 'package:konnect/app/utils/utils.dart';
import 'package:konnect/app/widgets/widgets.dart';

class TextAreaInputField extends StatelessWidget {
  const TextAreaInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final scaleFactorWidth = getDeviceWidthScaleFactor(context);
    final scaleFactorHeight = getDeviceHeightScaleFactor(context);
    final fontOffset = 5;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ABOUT YOURSELF',
          style: TextStyle(
            color: AppColors.onPrimaryColor,
            fontSize: 12 * scaleFactorWidth,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 10 * scaleFactorHeight,
              bottom: (15 - fontOffset) * scaleFactorHeight),
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: (18 - fontOffset) * scaleFactorHeight,
                horizontal: 12 * scaleFactorWidth),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50, color: AppColors.greyColorShade2),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: TextFormField(
              style: BodyText.getBodyTextStyle(context),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.done,
              maxLines: null,
              minLines: 6,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              cursorColor: AppColors.onPrimaryColor,
              cursorHeight: 14 * scaleFactorHeight,
              initialValue:
                  "At the helm of Kapoor Fragrance, I don’t need to necessarily concern myself with indirect taxation matter directly. But as an IDT professional myself, before starting the business, I love to delve into the same every now and then.",
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            '230/1000',
            style: TextStyle(
                color: AppColors.onPrimaryColor,
                fontSize: 14 * scaleFactorWidth,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                height: 0),
          ),
        ),
      ],
    );
  }
}
