import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../app/colors/colors.dart';
import '../../app/route/app_router.gr.dart';
import '../../app/widgets/app_icons.dart';

@RoutePage()
class FinalStep extends StatefulWidget {
  const FinalStep({super.key});

  @override
  State<FinalStep> createState() => _FinalStepState();
}

class _FinalStepState extends State<FinalStep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.primaryColor.withOpacity(0.1),
        shape: Border(
          bottom: BorderSide(color: Color(0xFFCECECE), width: 0.5),
        ),
        leading: IconButton(
          icon: AppIcon(appIcon: AppIcons.backArrow, width: 24, height: 24),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
        ),
        centerTitle: false,
        titleSpacing: 5,
        title: Text(
          'Final Step',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'As a dedicated community of tax enthusiasts, we would love to know more about you.',
                          style: TextStyle(
                            color: Color(0xFF161616),
                            fontSize: 14,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: 1.7,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ABOUT YOURSELF',
                                style: TextStyle(
                                  color: Color(0xFF161616),
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 15),
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF4A4A4A)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 1.7,
                                    ),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    textInputAction: TextInputAction.done,
                                    maxLines: null,
                                    minLines: 5,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    cursorColor: AppColors.onPrimaryColor,
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
                                    color: Color(0xFF161616),
                                    fontSize: 12,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'PHONE NUMBER',
                                style: TextStyle(
                                  color: Color(0xFF161616),
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF4A4A4A)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 16,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    textInputAction: TextInputAction.done,
                                    maxLines: 1,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    cursorColor: AppColors.onPrimaryColor,
                                    initialValue: "+91 89366 73622",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //
                        Row(
                          children: [
                            SizedBox(
                              width: 24.0,
                              height: 40.0,
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor: AppColors.logoColor,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Show phone number on profile',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 24.0,
                                height: 40.0,
                                child: Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: AppColors.logoColor,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Show email on profile',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(flex: 3),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              padding: EdgeInsets.only(
                                bottom: 5, // Space between underline and text
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Colors.black,
                                width: 1.0, // Underline thickness
                              ))),
                              child: Text(
                                'Skip for now',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
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
                              child: const Text(
                                'TAKE ME INSIDE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF161616),
                                  fontSize: 18,
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
              ),
            );
          },
        ),
      ),
    );
  }

  bool isChecked = false;
}
