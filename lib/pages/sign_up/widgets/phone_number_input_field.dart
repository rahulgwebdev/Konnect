import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konnect/app/colors/colors.dart';
import 'package:konnect/app/utils/utils.dart';

class PhoneNumberInputField extends StatelessWidget {
  const PhoneNumberInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final scaleFactorWidth = getDeviceWidthScaleFactor(context);
    final scaleFactorHeight = getDeviceHeightScaleFactor(context);
    final fontOffset = 5 * scaleFactorHeight;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PHONE NUMBER',
          style: TextStyle(
            color: AppColors.onPrimaryColor,
            fontSize: 12 * scaleFactorWidth,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10 * scaleFactorWidth),
          child: Container(
            padding: EdgeInsets.only(
              top: 17 - fontOffset * scaleFactorWidth,
              bottom: 18 - fontOffset * scaleFactorWidth,
              left: 12 * scaleFactorWidth,
              right: 12 * scaleFactorWidth,
            ),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50, color: AppColors.greyColorShade2),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                CustomInputFormatter()
              ],
              style: TextStyle(
                  color: AppColors.onPrimaryColor,
                  fontSize: 16 * scaleFactorWidth,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  height: (22 / 16) * scaleFactorWidth),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              keyboardType: TextInputType.number,
              maxLength: 11,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                  prefix: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '+91',
                        style: TextStyle(
                            color: AppColors.onPrimaryColor,
                            fontSize: 16 * scaleFactorWidth,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: (22 / 16) * scaleFactorWidth),
                      ),
                      SizedBox(width: 15 * scaleFactorWidth)
                    ],
                  )),
              buildCounter: (context,
                  {required currentLength, required isFocused, maxLength}) {
                return null;
              },
              cursorHeight: 16 * scaleFactorWidth,
              cursorColor: AppColors.onPrimaryColor,
              initialValue: "89366 73622",
            ),
          ),
        ),
      ],
    );
  }
}

class CustomInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String formattedValue = newValue.text.replaceAll(RegExp(r'\s'), '');
    if (formattedValue.length > 5) {
      formattedValue =
          formattedValue.substring(0, 5) + ' ' + formattedValue.substring(5);
    }
    int cursorPosition = formattedValue.length;
    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: cursorPosition),
    );
  }
}
