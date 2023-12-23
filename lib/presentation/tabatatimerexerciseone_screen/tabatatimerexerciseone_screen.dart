import '../tabatatimerexerciseone_screen/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

class TabatatimerexerciseoneScreen extends StatelessWidget {
  TabatatimerexerciseoneScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSlider(context),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 4.v,
                  width: 30.h,
                  margin: EdgeInsets.only(left: 56.h),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 4.v,
                  width: 30.h,
                  margin: EdgeInsets.only(right: 163.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 4.v,
                  width: 30.h,
                  margin: EdgeInsets.only(left: 92.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 4.v,
                  width: 30.h,
                  margin: EdgeInsets.only(right: 127.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 4.v,
                  width: 30.h,
                  margin: EdgeInsets.only(left: 128.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 4.v,
                  width: 30.h,
                  margin: EdgeInsets.only(right: 91.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 4.v,
                  width: 30.h,
                  margin: EdgeInsets.only(left: 164.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 4.v,
                  width: 30.h,
                  margin: EdgeInsets.only(right: 55.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Text(
                "Jumping Jack",
                style: CustomTextStyles.titleMediumPrimary_1,
              ),
              Text(
                "00:20",
                style: CustomTextStyles.titleSmallSemiBold,
              ),
              SizedBox(height: 19.v),
              CustomImageView(
                imagePath: ImageConstant.imgStretchingExercisesBro,
                height: 200.adaptSize,
                width: 200.adaptSize,
              ),
              SizedBox(height: 11.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTimer(
                    context,
                    minutesLabel: "Hours",
                    zeroLabel: "00",
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 16.v,
                    width: 6.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 36.v,
                      bottom: 22.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: _buildTimer(
                      context,
                      minutesLabel: "Minutes",
                      zeroLabel: "00",
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 16.v,
                    width: 6.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 36.v,
                      bottom: 22.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: _buildTimer(
                      context,
                      minutesLabel: "Seconds",
                      zeroLabel: "20",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 39.v),
              CustomOutlinedButton(
                text: "Proceed",
                margin: EdgeInsets.symmetric(horizontal: 24.h),
              ),
              SizedBox(height: 20.v),
              _buildPreviousExercise(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 284.v,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (
          index,
          reason,
        ) {
          sliderIndex = index;
        },
      ),
      itemCount: 2,
      itemBuilder: (context, index, realIndex) {
        return SliderItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildPreviousExercise(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrameGray80020x20,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "Previous Exercise",
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "Skip",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFrameGray80020x20,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 4.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTimer(
    BuildContext context, {
    required String minutesLabel,
    required String zeroLabel,
  }) {
    return Column(
      children: [
        Text(
          minutesLabel,
          style: CustomTextStyles.labelSmallPrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: 2.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.outlineGray60002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text(
                zeroLabel,
                style: theme.textTheme.headlineLarge!.copyWith(
                  color: appTheme.gray800,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
