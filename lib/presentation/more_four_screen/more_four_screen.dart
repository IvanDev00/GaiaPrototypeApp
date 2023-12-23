import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';import 'package:gaiadhiwise/presentation/more_seventeen_bottomsheet/more_seventeen_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class MoreFourScreen extends StatelessWidget {MoreFourScreen({Key? key}) : super(key: key);

TextEditingController calendarOneController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildStack(context), _buildColumn(context)])))); } 
/// Section Widget
Widget _buildActionTab(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomTextFormField(controller: calendarOneController, hintText: "Dec 1 2023 - Dec 30 2023", hintStyle: CustomTextStyles.bodySmallPrimary, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 9.v, 10.h, 9.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar11Primary, height: 18.adaptSize, width: 18.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 36.v), contentPadding: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 9.v))]))); } 
/// Section Widget
Widget _buildStack(BuildContext context) { return SizedBox(height: 160.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 35.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup56), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 33.v), CustomAppBar(height: 27.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 2.v)), centerTitle: true, title: AppbarSubtitle(text: "CGM Individuals Value"))]))), _buildActionTab(context)])); } 
/// Section Widget
Widget _buildColumn(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 34.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Date", style: theme.textTheme.labelLarge)), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(right: 3.h), child: _buildRow(context, text: "2023-10-30 (Monday)", onTapRow: () {onTapMonday(context);})), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(right: 3.h), child: _buildRow(context, text: "2023-10-30 (Monday)", onTapRow: () {onTapRow(context);})), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(right: 3.h), child: _buildRow(context, text: "2023-10-30 (Monday)", onTapRow: () {onTapMonday1(context);})), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(right: 3.h), child: _buildRow(context, text: "2023-10-30 (Monday)", onTapRow: () {onTapMonday2(context);})), SizedBox(height: 5.v)])); } 
/// Common widget
Widget _buildRow(BuildContext context, {required String text, Function? onTapRow, }) { return GestureDetector(onTap: () {onTapRow!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v), decoration: AppDecoration.outlineGray30002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 1.v), child: Text(text, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.gray800))), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 20.adaptSize, width: 20.adaptSize)]))); } 

/// Shows a modal bottom sheet with [MoreSeventeenBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapMonday(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>MoreSeventeenBottomsheet(),isScrollControlled: true); } 

/// Shows a modal bottom sheet with [MoreSeventeenBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapRow(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>MoreSeventeenBottomsheet(),isScrollControlled: true); } 

/// Shows a modal bottom sheet with [MoreSeventeenBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapMonday1(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>MoreSeventeenBottomsheet(),isScrollControlled: true); } 

/// Shows a modal bottom sheet with [MoreSeventeenBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapMonday2(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>MoreSeventeenBottomsheet(),isScrollControlled: true); } 
 }
