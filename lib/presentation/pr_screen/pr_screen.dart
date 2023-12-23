import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';import 'package:gaiadhiwise/presentation/pr_addrecordone_bottomsheet/pr_addrecordone_bottomsheet.dart';import 'package:gaiadhiwise/presentation/pr_updaterecordone_bottomsheet/pr_updaterecordone_bottomsheet.dart';class PrScreen extends StatelessWidget {const PrScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v), child: Column(children: [_buildWeightliftingPrsColumn1(context), SizedBox(height: 13.v), _buildWeightliftingPrsColumn2(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 38.v, bottom: 36.v)), centerTitle: true, title: AppbarSubtitle(text: "Personal Records"), styleType: Style.bgStyle_8); } 
/// Section Widget
Widget _buildWeightliftingPrsColumn1(BuildContext context) { return Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Weightlifting PR’s", style: CustomTextStyles.labelLargeSemiBold_1)), SizedBox(height: 12.v), _buildBenchPressRow(context, exerciseName: "Back Squat", exerciseWeight: "--", onTapBenchPressRow: () {onTapBackSquat(context);}), SizedBox(height: 8.v), _buildBenchPressRow(context, exerciseName: "Bench Press", exerciseWeight: "70kg x2", onTapBenchPressRow: () {onTapBenchPressRow(context);}), SizedBox(height: 8.v), _buildBenchPressRow(context, exerciseName: "Deadlift", exerciseWeight: "120kg")]); } 
/// Section Widget
Widget _buildWeightliftingPrsColumn2(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Weightlifting PR’s", style: CustomTextStyles.labelLargeSemiBold_1), SizedBox(height: 12.v), _buildBenchPressRow(context, exerciseName: "Back Max Unbroken Strict\nPull-ups", exerciseWeight: "--")]); } 
/// Common widget
Widget _buildBenchPressRow(BuildContext context, {required String exerciseName, required String exerciseWeight, Function? onTapBenchPressRow, }) { return GestureDetector(onTap: () {onTapBenchPressRow!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 7.v), decoration: AppDecoration.outlineGray30002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 2.v), child: Text(exerciseName, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.gray800))), Padding(padding: EdgeInsets.only(top: 4.v), child: Text(exerciseWeight, style: CustomTextStyles.labelMediumPrimarySemiBold.copyWith(color: theme.colorScheme.primary)))]))); } 

/// Shows a modal bottom sheet with [PrAddrecordoneBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapBackSquat(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>PrAddrecordoneBottomsheet(),isScrollControlled: true); } 

/// Shows a modal bottom sheet with [PrUpdaterecordoneBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapBenchPressRow(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>PrUpdaterecordoneBottomsheet(),isScrollControlled: true); } 
 }
