import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';import 'package:gaiadhiwise/widgets/custom_drop_down.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class MoreScreen extends StatelessWidget {MoreScreen({Key? key}) : super(key: key);

TextEditingController noteforDoctorController = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

TextEditingController descriptionController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildArrowDown(context), Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 33.v), child: Column(children: [_buildNoteForDoctor(context), SizedBox(height: 17.v), _buildDoctor(context), SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Content", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 2.v), CustomTextFormField(controller: descriptionController, hintText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod nunc ac egestas iaculis. Aliquam lectus sapien, pretium eget tincidunt eget, laoreet et libero. Phasellus quis scelerisque eros. Aenean tristique non eros ut rutrum. Phasellus ligula velit, vehicula ac dignissim eget, faucibus cursus felis. Aenean fermentum pharetra pulvinar. Suspendisse consectetur, ante id accumsan dapibus, ante mi tempus odio, eget varius est felis a eros.", hintStyle: CustomTextStyles.bodySmallGray80012, textInputAction: TextInputAction.done, maxLines: 21, contentPadding: EdgeInsets.all(14.h))])), SizedBox(height: 45.v), CustomOutlinedButton(width: 144.h, text: "Update note", onPressed: () {onTapUpdateNote(context);}, alignment: Alignment.centerRight), SizedBox(height: 5.v)]))])))); } 
/// Section Widget
Widget _buildArrowDown(BuildContext context) { return SizedBox(height: 98.v, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 3.v), onTap: () {onTapImgArrowDown(context);}), Padding(padding: EdgeInsets.only(left: 123.h), child: Text("Notes", style: CustomTextStyles.titleMediumWhiteA70018))]))), CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 38.v, bottom: 36.v)), centerTitle: true, title: AppbarSubtitle(text: "View note"), styleType: Style.bgStyle_1)])); } 
/// Section Widget
Widget _buildNoteForDoctor(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 2.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Title", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 2.v), CustomTextFormField(controller: noteforDoctorController, hintText: "Note for Doctor")])); } 
/// Section Widget
Widget _buildDoctor(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 2.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Doctor", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 2.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 14.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowDownBlack900, height: 20.adaptSize, width: 20.adaptSize)), hintText: "Dr. Black Jack", items: dropdownItemList, onChanged: (value) {})])); } 
/// Navigates to the moreFiveScreen when the action is triggered.
onTapImgArrowDown(BuildContext context) { Navigator.pushNamed(context, AppRoutes.moreFiveScreen); } 
/// Navigates to the moreFiveScreen when the action is triggered.
onTapUpdateNote(BuildContext context) { Navigator.pushNamed(context, AppRoutes.moreFiveScreen); } 
 }
