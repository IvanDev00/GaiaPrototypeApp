import '../tabatatimerexerciseone_three_screen/widgets/slider3_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

class TabatatimerexerciseoneThreeScreen extends StatelessWidget {
  TabatatimerexerciseoneThreeScreen({Key? key})
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
                  margin: EdgeInsets.only(right: 55.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              Text(
                "Push-ups",
                style: CustomTextStyles.titleMediumPrimary_1,
              ),
              Text(
                "x12",
                style: CustomTextStyles.titleSmallSemiBold,
              ),
              SizedBox(height: 19.v),
              CustomImageView(
                imagePath: ImageConstant.imgStretchingExercisesBro,
                height: 200.adaptSize,
                width: 200.adaptSize,
              ),
              SizedBox(height: 20.v),
              Text(
                "x12",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 2.v),
              Text(
                "Repetition",
                style: CustomTextStyles.titleSmallGray60002,
              ),
              SizedBox(height: 30.v),
              CustomOutlinedButton(
                text: "Done",
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
        return Slider3ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildPreviousExercise(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 127.h,
            child: Row(
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
          ),
          Spacer(),
          Text(
            "Skip",
            style: theme.textTheme.labelLarge,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray80020x20,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
          ),
        ],
      ),
    );
  }
}
