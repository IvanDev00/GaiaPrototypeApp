import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';
import 'package:gaiadhiwise/widgets/custom_icon_button.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

class MoreThreeScreen extends StatelessWidget {
  const MoreThreeScreen({Key? key})
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
              _buildArrowDown(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            _buildActionTab(context),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: SizeUtils.height,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: appTheme.gray90082,
                                ),
                              ),
                            ),
                            _buildDate(context),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 23.h,
                          vertical: 18.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder24,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 3.v,
                              width: 40.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray10001,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                            SizedBox(height: 30.v),
                            Text(
                              "Meal Tracking",
                              style: CustomTextStyles.titleMedium18,
                            ),
                            SizedBox(height: 12.v),
                            Text(
                              "2023-10-28 (Saturday)",
                              style: CustomTextStyles.bodyMediumGray60002,
                            ),
                            SizedBox(height: 32.v),
                            _buildCfcffFour(context),
                            SizedBox(height: 33.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img030cfc6229ff4,
                                    height: 58.adaptSize,
                                    width: 58.adaptSize,
                                    radius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.h,
                                      top: 12.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dinner",
                                          style: theme.textTheme.titleMedium,
                                        ),
                                        SizedBox(height: 7.v),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Taste Score:",
                                                style: CustomTextStyles
                                                    .bodySmallGray80010,
                                              ),
                                              TextSpan(
                                                text: " 8",
                                                style: CustomTextStyles
                                                    .labelMediumSemiBold,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 2.v),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Satiety Score:",
                                                style: CustomTextStyles
                                                    .bodySmallGray80010,
                                              ),
                                              TextSpan(
                                                text: " 9",
                                                style: CustomTextStyles
                                                    .labelMediumSemiBold,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 45.v),
                            Text(
                              "Early Snacks",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 24.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgD639724a29774,
                                    height: 58.adaptSize,
                                    width: 58.adaptSize,
                                    radius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgD639724a29774,
                                    height: 58.adaptSize,
                                    width: 58.adaptSize,
                                    radius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    margin: EdgeInsets.only(left: 14.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgD639724a29774,
                                    height: 58.adaptSize,
                                    width: 58.adaptSize,
                                    radius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    margin: EdgeInsets.only(left: 14.h),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 45.v),
                            Text(
                              "Late Snacks",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 24.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgClock,
                              height: 90.adaptSize,
                              width: 90.adaptSize,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "No late snacks available",
                              style: CustomTextStyles.labelMediumGray60002,
                            ),
                            SizedBox(height: 7.v),
                          ],
                        ),
                      ),
                    ],
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
  Widget _buildArrowDown(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 37.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup56,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 29.v),
          CustomAppBar(
            height: 27.v,
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.only(
                left: 24.h,
                bottom: 2.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "Weekly Meal Tracking",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActionTab(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.fromLTRB(24.h, 103.v, 24.h, 692.v),
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomOutlinedButton(
              height: 36.v,
              width: 194.h,
              text: "Dec 1 2023 - Dec 30 2023",
              margin: EdgeInsets.only(top: 1.v),
              rightIcon: Container(
                margin: EdgeInsets.only(left: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCalendar11Primary,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ),
              buttonStyle: CustomButtonStyles.outlineWhiteA,
              buttonTextStyle: CustomTextStyles.bodySmallPrimary,
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: CustomIconButton(
                height: 36.v,
                width: 38.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgDownloadWhiteA700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 25.h,
          top: 194.v,
          right: 28.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Date",
                style: theme.textTheme.labelLarge,
              ),
            ),
            SizedBox(height: 5.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineGray30002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2023-10-30 (Monday)",
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(height: 9.v),
                        Row(
                          children: [
                            Text(
                              "Breakfast",
                              style: CustomTextStyles.bodySmallGreen800,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCheck11Green800,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Text(
                                "Lunch",
                                style: CustomTextStyles.bodySmallPink600,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgX1,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 24.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "Dinner",
                      style: CustomTextStyles.bodySmallGreen800,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCheck11Green800,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      top: 24.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 24.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "Snacks",
                      style: CustomTextStyles.bodySmallGreen800,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCheck11Green800,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      top: 24.v,
                      bottom: 2.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 28.h,
                      top: 7.v,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineGray30002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2023-10-30 (Saturday)",
                            style: theme.textTheme.labelMedium,
                          ),
                          SizedBox(height: 9.v),
                          Row(
                            children: [
                              Text(
                                "Breakfast",
                                style: CustomTextStyles.bodySmallGreen800,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCheck11Green800,
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(left: 4.h),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "Lunch",
                                  style: CustomTextStyles.bodySmallGreen600,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCheck11Green800,
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(left: 4.h),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "Dinner",
                                  style: CustomTextStyles.bodySmallGreen800,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCheck11Green800,
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(left: 4.h),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "Snacks",
                                  style: CustomTextStyles.bodySmallGreen800,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCheck11Green800,
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(left: 4.h),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 28.h,
                      top: 7.v,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCfcffFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img030cfc6229ff4,
            height: 58.adaptSize,
            width: 58.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Breakfast",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 7.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Taste Score:",
                        style: CustomTextStyles.bodySmallGray80010,
                      ),
                      TextSpan(
                        text: " N/A",
                        style: CustomTextStyles.labelMediumSemiBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 2.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Satiety Score:",
                        style: CustomTextStyles.bodySmallGray80010,
                      ),
                      TextSpan(
                        text: " N/A",
                        style: CustomTextStyles.labelMediumSemiBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.img030cfc6229ff4,
            height: 58.adaptSize,
            width: 58.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lunch",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 7.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Taste Score:",
                        style: CustomTextStyles.bodySmallGray80010,
                      ),
                      TextSpan(
                        text: " 10",
                        style: CustomTextStyles.labelMediumSemiBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 2.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Satiety Score:",
                        style: CustomTextStyles.bodySmallGray80010,
                      ),
                      TextSpan(
                        text: " 8",
                        style: CustomTextStyles.labelMediumSemiBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
