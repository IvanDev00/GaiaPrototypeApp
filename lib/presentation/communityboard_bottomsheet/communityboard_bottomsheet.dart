import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class CommunityboardBottomsheet extends StatelessWidget {CommunityboardBottomsheet({Key? key}) : super(key: key);

TextEditingController shareYourThoughtsController = TextEditingController();

@override Widget build(BuildContext context) { return SingleChildScrollView(child: Container(padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 21.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL22), child: Column(mainAxisSize: MainAxisSize.min, children: [GestureDetector(onTap: () {onTapView(context);}, child: Container(height: 4.v, width: 40.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(2.h)))), SizedBox(height: 30.v), Text("Create Post", textAlign: TextAlign.center, style: CustomTextStyles.titleMediumPrimary18), SizedBox(height: 20.v), CustomTextFormField(controller: shareYourThoughtsController, hintText: "Share your thoughts", textInputAction: TextInputAction.done, maxLines: 10, contentPadding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v)), SizedBox(height: 32.v), CustomOutlinedButton(text: "Post"), SizedBox(height: 55.v)]))); } 
/// Navigates to the challengeboardScreen when the action is triggered.
onTapView(BuildContext context) { Navigator.pushNamed(context, AppRoutes.challengeboardScreen); } 
 }
