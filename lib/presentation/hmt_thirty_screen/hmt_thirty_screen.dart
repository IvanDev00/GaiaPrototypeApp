import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';import 'package:gaiadhiwise/presentation/hmt_thirty_two_bottomsheet/hmt_thirty_two_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class HmtThirtyScreen extends StatelessWidget {HmtThirtyScreen({Key? key}) : super(key: key);

TextEditingController monthController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildTealBg(context), SizedBox(height: 23.v), _buildTrainingOverview(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildActionTab(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomTextFormField(controller: monthController, hintText: "Wed, December 13 2023", hintStyle: CustomTextStyles.bodySmallPrimary, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 9.v, 10.h, 9.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar11Primary, height: 18.adaptSize, width: 18.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 36.v), contentPadding: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 9.v))]))); } 
/// Section Widget
Widget _buildTealBg(BuildContext context) { return SizedBox(height: 160.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgGroup56, height: 132.v, width: 393.h, alignment: Alignment.topCenter), _buildActionTab(context), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 24.h, top: 35.v), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 2.v)), Container(height: 27.v, width: 141.h, margin: EdgeInsets.only(left: 79.h), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Text("30min Workout", style: CustomTextStyles.titleMediumWhiteA70018)), Align(alignment: Alignment.center, child: Text("30min Workout", style: CustomTextStyles.titleMediumWhiteA70018))]))])))])); } 
/// Section Widget
Widget _buildTrainingOverview(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Training overview", style: theme.textTheme.titleMedium))), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 2.h), child: _buildOpenHouse(context, dynamicText: "Front Squat", onTapOpenHouse: () {onTapFrontSquat(context);})), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 2.h), child: _buildOpenHouse(context, dynamicText: "“Open House”"))])); } 
/// Common widget
Widget _buildOpenHouse(BuildContext context, {required String dynamicText, Function? onTapOpenHouse, }) { return GestureDetector(onTap: () {onTapOpenHouse!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 7.v), decoration: AppDecoration.outlineGray300021.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 1.v), child: Text(dynamicText, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.gray800))), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 1.v, right: 7.h))]))); } 

/// Shows a modal bottom sheet with [HmtThirtyTwoBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapFrontSquat(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>HmtThirtyTwoBottomsheet(),isScrollControlled: true); } 
 }
