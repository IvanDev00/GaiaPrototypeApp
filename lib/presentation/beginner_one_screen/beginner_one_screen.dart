import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

class BeginnerOneScreen extends StatelessWidget {
  const BeginnerOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTealBackground(context),
              SizedBox(height: 24.v),
              _buildBeginnerOneWorkouts(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTealBackground(BuildContext context) {
    return SizedBox(
      height: 122.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.teal30001,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.customBorderBL16,
              ),
              child: Container(
                height: 122.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                decoration: AppDecoration.fillTeal30001.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL16,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup5Teal40001,
                      height: 87.v,
                      width: 185.h,
                      alignment: Alignment.topRight,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 115.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Intermediate",
                              style: CustomTextStyles.titleMediumWhiteA70018,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "20-30 mins workout",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 111.v,
              width: 70.h,
              margin: EdgeInsets.only(left: 7.h),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 38.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgVectorTeal400,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.topLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBeginnerOneWorkouts(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Workouts",
              style: CustomTextStyles.labelLargeSemiBold_1,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.outlineGray30002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upper body Workout",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "30 mins",
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 6.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.all(9.h),
            decoration: AppDecoration.outlineGray30002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Abs Workout",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "25 mins",
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    top: 6.v,
                    bottom: 7.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
