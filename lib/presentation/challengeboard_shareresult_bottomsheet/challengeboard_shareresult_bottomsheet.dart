import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ChallengeboardShareresultBottomsheet extends StatelessWidget {ChallengeboardShareresultBottomsheet({Key? key}) : super(key: key);

TextEditingController repsController = TextEditingController();

TextEditingController rxController = TextEditingController();

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 21.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL22), child: Column(mainAxisSize: MainAxisSize.min, children: [GestureDetector(onTap: () {onTapView(context);}, child: Container(height: 4.v, width: 40.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(2.h)))), SizedBox(height: 24.v), Text("Share your result", style: CustomTextStyles.titleMediumPrimary18), Text("Deadlift 1x3", style: theme.textTheme.titleSmall), SizedBox(height: 31.v), _buildReps(context), SizedBox(height: 28.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildRx(context), _buildScaled(context)]), SizedBox(height: 10.v), Align(alignment: Alignment.centerLeft, child: Container(width: 281.h, margin: EdgeInsets.only(right: 23.h), child: RichText(text: TextSpan(children: [TextSpan(text: "Note:", style: CustomTextStyles.labelSmallBold), TextSpan(text: " Within fitness community, ", style: CustomTextStyles.bodySmallGray800_1), TextSpan(text: "'Rx'", style: CustomTextStyles.labelSmallBold), TextSpan(text: " signifies the challenging, standard version of a workout, while ", style: CustomTextStyles.bodySmallGray800_1), TextSpan(text: "'Scaled' offers a modified option, ensuring inclusivity and accessibility for participants of diverse fitness levels.", style: CustomTextStyles.labelSmallBold)]), textAlign: TextAlign.left))), SizedBox(height: 50.v), _buildSaveResult(context), SizedBox(height: 69.v)])); } 
/// Section Widget
Widget _buildReps(BuildContext context) { return CustomTextFormField(controller: repsController, hintText: "Reps"); } 
/// Section Widget
Widget _buildRx(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 19.h), child: CustomTextFormField(controller: rxController, hintText: "RX", hintStyle: CustomTextStyles.bodyMediumPrimary, textInputAction: TextInputAction.done))); } 
/// Section Widget
Widget _buildScaled(BuildContext context) { return Expanded(child: CustomOutlinedButton(text: "Scaled", margin: EdgeInsets.only(left: 19.h))); } 
/// Section Widget
Widget _buildSaveResult(BuildContext context) { return CustomOutlinedButton(text: "Save Result"); } 
/// Navigates to the challengeboardScreen when the action is triggered.
onTapView(BuildContext context) { Navigator.pushNamed(context, AppRoutes.challengeboardScreen); } 
 }
