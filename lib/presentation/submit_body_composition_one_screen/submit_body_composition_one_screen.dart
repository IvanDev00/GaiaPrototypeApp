import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SubmitBodyCompositionOneScreen extends StatelessWidget {SubmitBodyCompositionOneScreen({Key? key}) : super(key: key);

TextEditingController noSelectedFileController = TextEditingController();

TextEditingController editTextController = TextEditingController();

TextEditingController timeController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildMainStack(context), Container(padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 19.v), child: Column(children: [_buildTwentyThreeColumn(context), SizedBox(height: 15.v), _buildEditTextColumn(context), SizedBox(height: 13.v), _buildDateOfSubmissionColumn(context), SizedBox(height: 13.v), _buildTimeOfSubmissionColumn(context), SizedBox(height: 40.v), CustomOutlinedButton(text: "Submit Data", onPressed: () {onTapSubmitData(context);}), SizedBox(height: 5.v)]))])))); } 
/// Section Widget
Widget _buildMealTrackingColumn(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 41.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 19.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("Meal Tracking", style: CustomTextStyles.titleMedium18), Text("Kindly fill up all the data for meal tracking.", style: CustomTextStyles.bodySmallGray60001)])), SizedBox(height: 24.v), CustomImageView(imagePath: ImageConstant.imgImage11, height: 196.v, width: 305.h)]))); } 
/// Section Widget
Widget _buildMainStack(BuildContext context) { return SizedBox(height: 392.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 26.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup56), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 56.v), CustomAppBar(height: 24.v, leadingWidth: double.maxFinite, leading: Container(height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.fromLTRB(29.h, 5.v, 350.h, 5.v), child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgVector, height: 2.v, width: 14.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(top: 7.v, bottom: 5.v)), CustomImageView(imagePath: ImageConstant.imgVectorWhiteA700, height: 14.v, width: 7.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(right: 7.h), onTap: () {onTapImgVector(context);})])))]))), _buildMealTrackingColumn(context)])); } 
/// Section Widget
Widget _buildTwentyThreeColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Image preview", style: CustomTextStyles.bodySmallGray80012), CustomTextFormField(controller: noSelectedFileController, hintText: "No selected file", contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 12.v))]); } 
/// Section Widget
Widget _buildEditTextColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Meal Type", style: CustomTextStyles.bodySmallGray80012), CustomTextFormField(controller: editTextController)]); } 
/// Section Widget
Widget _buildDateOfSubmissionColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Date of submission", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 2.v), Container(padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 8.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(left: 4.h), child: Text("01/12/2023", style: CustomTextStyles.bodyMediumGray800)), CustomImageView(imagePath: ImageConstant.imgCalendar11, height: 20.adaptSize, width: 20.adaptSize)]))]); } 
/// Section Widget
Widget _buildTimeOfSubmissionColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Time of submission", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 2.v), CustomTextFormField(controller: timeController, hintText: "6:28 pm", textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 11.v, 10.h, 9.v), child: CustomImageView(imagePath: ImageConstant.imgClock1, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 40.v), contentPadding: EdgeInsets.only(left: 14.h, top: 9.v, bottom: 9.v))]); } 

/// Navigates back to the previous screen.
onTapImgVector(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the dailyContainer1Screen when the action is triggered.
onTapSubmitData(BuildContext context) { Navigator.pushNamed(context, AppRoutes.dailyContainer1Screen); } 
 }
