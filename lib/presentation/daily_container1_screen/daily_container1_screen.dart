import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/presentation/daily_container_page/daily_container_page.dart';import 'package:gaiadhiwise/presentation/fitness_page/fitness_page.dart';import 'package:gaiadhiwise/presentation/monthly_page/monthly_page.dart';import 'package:gaiadhiwise/presentation/more_nine_page/more_nine_page.dart';import 'package:gaiadhiwise/widgets/custom_bottom_app_bar.dart';import 'package:gaiadhiwise/widgets/custom_floating_button.dart';
// ignore_for_file: must_be_immutable
class DailyContainer1Screen extends StatelessWidget {DailyContainer1Screen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.dailyContainerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomAppBar(context), floatingActionButton: CustomFloatingButton(height: 58, width: 58, backgroundColor: appTheme.teal700, child: CustomImageView(imagePath: ImageConstant.imgPlus11, height: 29.0.v, width: 29.0.h)), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked)); } 
/// Section Widget
Widget _buildBottomAppBar(BuildContext context) { return CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Userprimary: return AppRoutes.dailyContainerPage; case BottomBarEnum.Group34: return AppRoutes.monthlyPage; case BottomBarEnum.Group35: return AppRoutes.fitnessPage; case BottomBarEnum.Group36: return AppRoutes.moreNinePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.dailyContainerPage: return DailyContainerPage(); case AppRoutes.monthlyPage: return MonthlyPage(); case AppRoutes.fitnessPage: return FitnessPage(); case AppRoutes.moreNinePage: return MoreNinePage(); default: return DefaultWidget();} } 
 }
