import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ConversionchartLowequipmentPage extends StatefulWidget {
  const ConversionchartLowequipmentPage({Key? key})
      : super(
          key: key,
        );

  @override
  ConversionchartLowequipmentPageState createState() =>
      ConversionchartLowequipmentPageState();
}

class ConversionchartLowequipmentPageState
    extends State<ConversionchartLowequipmentPage>
    with AutomaticKeepAliveClientMixin<ConversionchartLowequipmentPage> {
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
              SizedBox(height: 43.v),
              _buildLowEquipmentAdjustmentChart(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLowEquipmentAdjustmentChart(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Text(
            "Low equipment adjustment chart",
            style: CustomTextStyles.titleMediumPrimaryBold,
          ),
          Container(
            width: 304.h,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              "Offers exercise ideas that require minimal or no equipment, making it easy to maintain your fitness routine even when resources are limited.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallBluegray300,
            ),
          ),
          SizedBox(height: 28.v),
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
