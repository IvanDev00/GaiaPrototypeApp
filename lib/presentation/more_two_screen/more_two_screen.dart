import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class MoreTwoScreen extends StatelessWidget {MoreTwoScreen({Key? key}) : super(key: key);

TextEditingController editTextController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(height: SizeUtils.height, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [_buildAllNotesColumn(context), _buildArrowDown(context), _buildActionTabRow(context), Align(alignment: Alignment.center, child: Container(height: SizeUtils.height, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.gray90082))), Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.only(left: 1.h), padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 50.v), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 81.v), _buildEditTextColumn(context), SizedBox(height: 17.v), _buildDoctorColumn(context), SizedBox(height: 20.v), _buildContentColumn(context), SizedBox(height: 45.v), CustomOutlinedButton(width: 126.h, text: "Save note", onPressed: () {onTapSaveNote(context);}, alignment: Alignment.centerRight)])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 38.v, bottom: 36.v)), centerTitle: true, title: AppbarSubtitle(text: "New Note"), styleType: Style.bgStyle); } 
/// Section Widget
Widget _buildAllNotesColumn(BuildContext context) { return Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 25.h, top: 194.v, right: 28.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerLeft, child: Text("All notes", style: theme.textTheme.labelLarge)), SizedBox(height: 5.v), _buildNoteForPhysicalColumn(context, helloText: "Note for physical therapist", dateText: "2023-10-30"), SizedBox(height: 10.v), _buildNoteForPhysicalColumn(context, helloText: "Hello", dateText: "2023-10-30")]))); } 
/// Section Widget
Widget _buildArrowDown(BuildContext context) { return Align(alignment: Alignment.topCenter, child: Container(width: double.maxFinite, margin: EdgeInsets.only(bottom: 720.v), padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 34.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup56), fit: BoxFit.cover)), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 3.v, bottom: 35.v), onTap: () {onTapImgArrowDown(context);}), Padding(padding: EdgeInsets.only(left: 123.h, bottom: 35.v), child: Text("Notes", style: CustomTextStyles.titleMediumWhiteA70018))]))); } 
/// Section Widget
Widget _buildActionTabRow(BuildContext context) { return Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.fromLTRB(24.h, 103.v, 24.h, 692.v), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 7.v), decoration: AppDecoration.outlineWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Search note...", style: CustomTextStyles.bodySmallBluegray200), CustomImageView(imagePath: ImageConstant.imgSearch21, height: 18.adaptSize, width: 18.adaptSize)]))), CustomImageView(imagePath: ImageConstant.imgFacebook, height: 36.v, width: 38.h, margin: EdgeInsets.only(left: 19.h, top: 1.v))]))); } 
/// Section Widget
Widget _buildEditTextColumn(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Title", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 2.v), CustomTextFormField(controller: editTextController, textInputAction: TextInputAction.done)])); } 
/// Section Widget
Widget _buildDoctorColumn(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Doctor", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 2.v), Container(width: 345.h, padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 9.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: CustomImageView(imagePath: ImageConstant.imgArrowDownBlack900, height: 20.adaptSize, width: 20.adaptSize))])); } 
/// Section Widget
Widget _buildContentColumn(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Content", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 2.v), Container(height: 406.v, width: 345.h, decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: appTheme.gray30001, width: 1.h)))])); } 
/// Common widget
Widget _buildNoteForPhysicalColumn(BuildContext context, {required String helloText, required String dateText, }) { return Container(width: 340.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v), decoration: AppDecoration.outlineGray300021.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text(helloText, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.gray800)), SizedBox(height: 3.v), Text(dateText, style: CustomTextStyles.bodySmall10.copyWith(color: appTheme.gray60002))])); } 
/// Navigates to the moreFiveScreen when the action is triggered.
onTapImgArrowDown(BuildContext context) { Navigator.pushNamed(context, AppRoutes.moreFiveScreen); } 
/// Navigates to the moreFiveScreen when the action is triggered.
onTapSaveNote(BuildContext context) { Navigator.pushNamed(context, AppRoutes.moreFiveScreen); } 
 }
