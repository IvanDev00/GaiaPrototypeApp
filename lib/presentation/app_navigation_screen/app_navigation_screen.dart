import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Submit O2 Ring",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.submitO2RingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Submit Body Composition Four",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.submitBodyCompositionFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Submit Body Composition Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.submitBodyCompositionThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Submit Body Composition",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.submitBodyCompositionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Submit Body Composition Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.submitBodyCompositionTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Submit Body Composition One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.submitBodyCompositionOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Daily - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dailyContainer1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreFifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.moreScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password Screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password Screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.forgotPasswordScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Email Sent Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emailSentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ChallengeBoard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.challengeboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ChallengeBoard-Preparation",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.challengeboardPreparationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ChallengeBoard-Scoreboard",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.challengeboardScoreboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CommunityBoard Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityboardTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CommunityBoard-Popup",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityboardPopupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community Board Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityBoardThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "More One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moreOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community Board Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityBoardFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community Board One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityBoardOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CommunityBoard-Comments One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.communityboardCommentsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CommunityBoard-Comments",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityboardCommentsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HMT-Thirty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.hmtThirtyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HMT-Sixty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.hmtSixtyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HMT-Ninety",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.hmtNinetyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Beginner",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.beginnerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community Board Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityBoardEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Timer",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.timerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TabataTimer",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.tabatatimerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TabataTimerExerciseOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.tabatatimerexerciseoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TabataTimerExerciseOne Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.tabatatimerexerciseoneTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TabataTimerExerciseOne Five",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.tabatatimerexerciseoneFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TabataTimerExerciseOne Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.tabatatimerexerciseoneThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "GymAffiliation",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.gymaffiliationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "PR",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.prScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ConversionChart-Cardio - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .conversionchartCardioTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "ConversionChart-Movement - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .conversionchartMovementTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Beginner One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.beginnerOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Beginner Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.beginnerTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AskAI",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.askaiScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Store-ItemDetails One - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.storeItemdetailsOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Store-MyCart",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.storeMycartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Store-CheckOut",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.storeCheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Store-MyOrders",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.storeMyordersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Capture",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.captureScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Capture-Camera",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.captureCameraScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Capture-Video",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.captureVideoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Capture-VideoPlay",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.captureVideoplayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Gamify",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.gamifyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Store-ItemDetails",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.storeItemdetailsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
