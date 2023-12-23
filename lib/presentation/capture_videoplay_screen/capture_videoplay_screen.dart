import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/presentation/daily_container_page/daily_container_page.dart';import 'package:gaiadhiwise/presentation/fitness_page/fitness_page.dart';import 'package:gaiadhiwise/presentation/monthly_page/monthly_page.dart';import 'package:gaiadhiwise/presentation/more_nine_page/more_nine_page.dart';import 'package:gaiadhiwise/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';import 'package:gaiadhiwise/widgets/custom_bottom_app_bar.dart';
// ignore_for_file: must_be_immutable
class CaptureVideoplayScreen extends StatelessWidget {CaptureVideoplayScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, appBar: _buildAppBar(context), body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: appTheme.whiteA700, image: DecorationImage(image: AssetImage(ImageConstant.imgGroup1796), fit: BoxFit.cover)), child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 171.h, vertical: 6.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Container(height: 10.adaptSize, width: 10.adaptSize, margin: EdgeInsets.only(left: 3.h, top: 644.v, bottom: 4.v), decoration: BoxDecoration(color: theme.colorScheme.secondaryContainer, borderRadius: BorderRadius.circular(5.h))), Padding(padding: EdgeInsets.only(top: 637.v), child: Text("01:18", style: CustomTextStyles.titleSmallWhiteA700))]))), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: _buildBottomBar(context)), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked)); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 60.v, actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgFrame30x30, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v), onTap: () {onTapIconButton(context);})]); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Userprimary: return AppRoutes.dailyContainerPage; case BottomBarEnum.Group34: return AppRoutes.monthlyPage; case BottomBarEnum.Group35: return AppRoutes.fitnessPage; case BottomBarEnum.Group36: return AppRoutes.moreNinePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.dailyContainerPage: return DailyContainerPage(); case AppRoutes.monthlyPage: return MonthlyPage(); case AppRoutes.fitnessPage: return FitnessPage(); case AppRoutes.moreNinePage: return MoreNinePage(); default: return DefaultWidget();} } 
/// Navigates to the captureScreen when the action is triggered.
onTapIconButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.captureScreen); } 
 }
