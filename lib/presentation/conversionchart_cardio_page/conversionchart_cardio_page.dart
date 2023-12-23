import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ConversionchartCardioPage extends StatefulWidget {
  const ConversionchartCardioPage({Key? key})
      : super(
          key: key,
        );

  @override
  ConversionchartCardioPageState createState() =>
      ConversionchartCardioPageState();
}

class ConversionchartCardioPageState extends State<ConversionchartCardioPage>
    with AutomaticKeepAliveClientMixin<ConversionchartCardioPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 41.v),
              _buildCardioConversion(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardioConversion(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Text(
            "Cardio conversion chart",
            style: CustomTextStyles.titleMediumPrimaryBold,
          ),
          Container(
            width: 332.h,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            child: Text(
              "This chart helps you convert between different training metrics like heart rate, pace, and RPE (Rate of Perceived Exertion) to personalize your cardio workouts and maintain the right intensity level.",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallBluegray300,
            ),
          ),
          SizedBox(height: 25.v),
          Column(
            children: [
              _buildWalkingMph(
                context,
                walkingMphText: "Exercise Type",
                thirtyNineText: "MET Value",
              ),
              _buildWalkingMph(
                context,
                walkingMphText: "Walking (3.5 mph)",
                thirtyNineText: "3.9",
              ),
              _buildWalkingMph(
                context,
                walkingMphText: "Running (6.0 mph)",
                thirtyNineText: "9.8",
              ),
              _buildWalkingMph(
                context,
                walkingMphText: "Cycling (12-14 mph)",
                thirtyNineText: "8.0",
              ),
              _buildWalkingMph(
                context,
                walkingMphText: "Swimming (moderate)",
                thirtyNineText: "7.0",
              ),
              _buildWalkingMph(
                context,
                walkingMphText: "Jumping Rope",
                thirtyNineText: "12.0",
              ),
              _buildWalkingMph(
                context,
                walkingMphText: "Aerobic Dance",
                thirtyNineText: "7.5",
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWalkingMph(
    BuildContext context, {
    required String walkingMphText,
    required String thirtyNineText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlinePrimary,
      child: Row(
        children: [
          Text(
            walkingMphText,
            style: CustomTextStyles.bodySmallGray80012.copyWith(
              color: appTheme.gray800,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 97.h),
            child: Text(
              thirtyNineText,
              style: CustomTextStyles.bodySmallGray80012.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
