import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';class TabatatimerexerciseoneOneDialog extends StatelessWidget {const TabatatimerexerciseoneOneDialog({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return Container(width: 247.h, padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 30.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder14), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Text("Rest", style: theme.textTheme.titleLarge), SizedBox(height: 17.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomOutlinedButton(height: 60.v, width: 60.h, text: "00", buttonStyle: CustomButtonStyles.outlineGrayTL4, buttonTextStyle: theme.textTheme.headlineLarge!), CustomImageView(imagePath: ImageConstant.imgClose, height: 16.v, width: 6.h, margin: EdgeInsets.only(left: 10.h, top: 22.v, bottom: 22.v), onTap: () {onTapImgClose(context);}), CustomOutlinedButton(height: 60.v, width: 60.h, text: "10", margin: EdgeInsets.only(left: 10.h), buttonStyle: CustomButtonStyles.outlineGrayTL4, buttonTextStyle: theme.textTheme.headlineLarge!)]), SizedBox(height: 25.v), GestureDetector(onTap: () {onTapTxtSkip(context);}, child: Text("Skip", style: theme.textTheme.titleMedium))])); } 

/// Navigates back to the previous screen.
onTapImgClose(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the tabatatimerexerciseoneThreeScreen when the action is triggered.
onTapTxtSkip(BuildContext context) { Navigator.pushNamed(context, AppRoutes.tabatatimerexerciseoneThreeScreen); } 
 }
