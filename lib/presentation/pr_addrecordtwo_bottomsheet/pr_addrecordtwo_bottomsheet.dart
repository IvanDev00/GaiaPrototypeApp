import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';class PrAddrecordtwoBottomsheet extends StatelessWidget {const PrAddrecordtwoBottomsheet({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 20.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL22), child: Column(mainAxisSize: MainAxisSize.min, children: [GestureDetector(onTap: () {onTapView(context);}, child: Container(height: 4.v, width: 40.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(2.h)))), SizedBox(height: 24.v), Text("Save your record", style: CustomTextStyles.titleMediumPrimary18), Text("Back Squat", style: theme.textTheme.titleSmall), SizedBox(height: 29.v), CustomOutlinedButton(text: "Reps", buttonStyle: CustomButtonStyles.outlineGray, buttonTextStyle: CustomTextStyles.bodyMediumBluegray200), SizedBox(height: 36.v), CustomOutlinedButton(text: "Save Result", onPressed: () {onTapSaveResult(context);}), SizedBox(height: 70.v)])); } 
/// Navigates to the prScreen when the action is triggered.
onTapView(BuildContext context) { Navigator.pushNamed(context, AppRoutes.prScreen); } 
/// Navigates to the prScreen when the action is triggered.
onTapSaveResult(BuildContext context) { Navigator.pushNamed(context, AppRoutes.prScreen); } 
 }
