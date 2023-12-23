import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';class ForgotPasswordScreenTwoBottomsheet extends StatelessWidget {const ForgotPasswordScreenTwoBottomsheet({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 176.h, vertical: 18.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL22), child: GestureDetector(onTap: () {onTapView(context);}, child: Container(height: 3.v, width: 40.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(1.h))))); } 
/// Navigates to the forgotPasswordScreenThreeScreen when the action is triggered.
onTapView(BuildContext context) { Navigator.pushNamed(context, AppRoutes.forgotPasswordScreenThreeScreen); } 
 }
