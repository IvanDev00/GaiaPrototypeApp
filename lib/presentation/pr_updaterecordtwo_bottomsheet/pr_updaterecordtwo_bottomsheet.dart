import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class PrUpdaterecordtwoBottomsheet extends StatelessWidget {PrUpdaterecordtwoBottomsheet({Key? key}) : super(key: key);

TextEditingController repsController = TextEditingController();

TextEditingController weightController = TextEditingController();

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 20.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL22), child: Column(mainAxisSize: MainAxisSize.min, children: [GestureDetector(onTap: () {onTapView(context);}, child: Container(height: 4.v, width: 40.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(2.h)))), SizedBox(height: 24.v), Text("Update your record", style: CustomTextStyles.titleMediumPrimary18), Text("Bench Press", style: theme.textTheme.titleSmall), SizedBox(height: 31.v), _buildReps(context), SizedBox(height: 16.v), _buildWeight(context), SizedBox(height: 16.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildLBS(context), _buildKG(context)]), SizedBox(height: 36.v), _buildSaveResult(context), SizedBox(height: 70.v)])); } 
/// Section Widget
Widget _buildReps(BuildContext context) { return CustomTextFormField(controller: repsController, hintText: "Reps"); } 
/// Section Widget
Widget _buildWeight(BuildContext context) { return CustomTextFormField(controller: weightController, hintText: "Weight", textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildLBS(BuildContext context) { return Expanded(child: CustomOutlinedButton(text: "LBS", margin: EdgeInsets.only(right: 19.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL6, buttonTextStyle: CustomTextStyles.bodyMediumPrimary)); } 
/// Section Widget
Widget _buildKG(BuildContext context) { return Expanded(child: CustomOutlinedButton(text: "KG", margin: EdgeInsets.only(left: 19.h))); } 
/// Section Widget
Widget _buildSaveResult(BuildContext context) { return CustomOutlinedButton(text: "Save Result", onPressed: () {onTapSaveResult(context);}); } 
/// Navigates to the prScreen when the action is triggered.
onTapView(BuildContext context) { Navigator.pushNamed(context, AppRoutes.prScreen); } 
/// Navigates to the prScreen when the action is triggered.
onTapSaveResult(BuildContext context) { Navigator.pushNamed(context, AppRoutes.prScreen); } 
 }
