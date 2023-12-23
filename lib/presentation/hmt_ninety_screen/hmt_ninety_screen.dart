import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_search_view.dart';

class HmtNinetyScreen extends StatelessWidget {
  HmtNinetyScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTealBackground(context),
              SizedBox(height: 23.v),
              _buildTrainingOverview(context),
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
      height: 160.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup56,
            height: 132.v,
            width: 393.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 35.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(top: 2.v),
                  ),
                  Container(
                    height: 27.v,
                    width: 142.h,
                    margin: EdgeInsets.only(left: 78.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "90min Workout",
                            style: CustomTextStyles.titleMediumWhiteA70018,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "30min Workout",
                            style: CustomTextStyles.titleMediumWhiteA70018,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomSearchView(
              width: 345.h,
              controller: searchController,
              hintText: "Wed, December 13 2023",
              hintStyle: CustomTextStyles.bodySmallPrimary,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrainingOverview(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "Training overview",
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: _buildSundayRunDay(
              context,
              text: "Front Squat",
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: _buildSundayRunDay(
              context,
              text: "Sunday Run-Day",
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: _buildSundayRunDay(
              context,
              text: "“Chalk It Up”",
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: _buildSundayRunDay(
              context,
              text: "“Swiftie”",
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: _buildSundayRunDay(
              context,
              text: "“All Work, No Play”",
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSundayRunDay(
    BuildContext context, {
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray300021.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 1.v,
            ),
            child: Text(
              text,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 1.v,
              right: 7.h,
            ),
          ),
        ],
      ),
    );
  }
}
