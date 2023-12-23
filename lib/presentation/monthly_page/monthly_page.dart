import '../monthly_page/widgets/pedometercomponent_item_widget.dart';
import '../monthly_page/widgets/usercard_item_widget.dart';
import '../monthly_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class MonthlyPage extends StatelessWidget {
  const MonthlyPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildMonthlyHealthReport(context),
                SizedBox(height: 26.v),
                Text(
                  "Goal Report",
                  style: CustomTextStyles.titleMediumPrimaryBold,
                ),
                SizedBox(
                  width: 220.h,
                  child: Text(
                    "Track your monthly goals effortlessly with our sleek Goal Report interface.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallBluegray300,
                  ),
                ),
                SizedBox(height: 17.v),
                _buildUserProfile(context),
                SizedBox(height: 34.v),
                _buildBloodAge(context),
                SizedBox(height: 33.v),
                Text(
                  "Graph Presentation",
                  style: CustomTextStyles.titleMediumPrimaryBold,
                ),
                Text(
                  "Graphical representation of your monthly data",
                  style: CustomTextStyles.bodySmallBluegray300,
                ),
                SizedBox(height: 20.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.h),
                  padding: EdgeInsets.symmetric(vertical: 38.v),
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 102.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Visceral Fat",
                                style: theme.textTheme.bodySmall,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 34.h),
                                child: Text(
                                  "Body Fat",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 4.v),
                      _buildZipcode(context),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 34.h,
                          right: 6.h,
                        ),
                        child: _buildFortyFour(
                          context,
                          sunText: "Sun",
                          monText: "Mon",
                          tueText: "Tue",
                          wedText: "Wed",
                          thursText: "Thurs",
                          friText: "Fri",
                          satText: "Sat",
                        ),
                      ),
                      SizedBox(height: 48.v),
                      Text(
                        "Current Weight Progress",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
                      SizedBox(height: 10.v),
                      _buildZipcode1(context),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 34.h,
                          right: 6.h,
                        ),
                        child: _buildFortyFour(
                          context,
                          sunText: "Sun",
                          monText: "Mon",
                          tueText: "Tue",
                          wedText: "Wed",
                          thursText: "Thurs",
                          friText: "Fri",
                          satText: "Sat",
                        ),
                      ),
                      SizedBox(height: 48.v),
                      Text(
                        "O2 Ring",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 2.v),
                              decoration: BoxDecoration(
                                color: appTheme.blueA200,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "Oxygen Level",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                left: 12.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.pink600,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "Pulse Rate",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                left: 12.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.green600,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "O2 Score",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                left: 12.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.deepPurpleA200,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "4% Drop",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                left: 12.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.amber400,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "3% Drop",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      _buildZipcode2(context),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 34.h,
                          right: 6.h,
                        ),
                        child: _buildFortyFour(
                          context,
                          sunText: "Sun",
                          monText: "Mon",
                          tueText: "Tue",
                          wedText: "Wed",
                          thursText: "Thurs",
                          friText: "Fri",
                          satText: "Sat",
                        ),
                      ),
                      SizedBox(height: 35.v),
                      SizedBox(
                        height: 874.v,
                        width: 345.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 33.v,
                                width: 345.h,
                                margin: EdgeInsets.only(top: 303.v),
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                ),
                              ),
                            ),
                            _buildPedometerComponent(context),
                          ],
                        ),
                      ),
                      SizedBox(height: 42.v),
                      Text(
                        "Blood Pressure",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 47.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 2.v),
                              decoration: BoxDecoration(
                                color: appTheme.pink600,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "Manual SP",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                left: 12.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.blueA200,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "Manual DP",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                left: 12.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.green600,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "Watch SP",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                left: 12.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.amber40001,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "Manual DP",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.v),
                      _buildZipcode3(context),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 34.h,
                          right: 6.h,
                        ),
                        child: _buildFortyFour(
                          context,
                          sunText: "Sun",
                          monText: "Mon",
                          tueText: "Tue",
                          wedText: "Wed",
                          thursText: "Thurs",
                          friText: "Fri",
                          satText: "Sat",
                        ),
                      ),
                      SizedBox(height: 64.v),
                      Text(
                        "BMI",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
                      SizedBox(height: 10.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                            decoration: BoxDecoration(
                              color: appTheme.blueA200,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "Weight",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Container(
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            margin: EdgeInsets.only(
                              left: 20.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.teal30001,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "Body Fat ",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.v),
                      _buildZipcode4(context),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 34.h,
                          right: 6.h,
                        ),
                        child: _buildFortyFour(
                          context,
                          sunText: "Sun",
                          monText: "Mon",
                          tueText: "Tue",
                          wedText: "Wed",
                          thursText: "Thurs",
                          friText: "Fri",
                          satText: "Sat",
                        ),
                      ),
                      SizedBox(height: 17.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMonthlyHealthReport(BuildContext context) {
    return SizedBox(
      height: 160.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 83.h,
                vertical: 48.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup56,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Text(
                    "Monthly Health Report",
                    style: CustomTextStyles.titleLargeWhiteA700,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 24.h,
                top: 103.v,
                right: 24.h,
              ),
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
                  CustomImageView(
                    imagePath: ImageConstant.imgDownload,
                    height: 36.v,
                    width: 38.h,
                    margin: EdgeInsets.only(top: 1.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 115.v,
          crossAxisCount: 2,
          mainAxisSpacing: 23.h,
          crossAxisSpacing: 23.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBloodAge(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 52.h),
      child: Column(
        children: [
          Text(
            "Blood Age",
            style: CustomTextStyles.titleMediumPrimaryBold,
          ),
          SizedBox(
            width: 287.h,
            child: Text(
              "Blood Age, measured by our patented aging clock, analyzes cellular footprints in the blood to reveal your aging pace.",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallBluegray300,
            ),
          ),
          SizedBox(height: 17.v),
          SizedBox(
            height: 88.v,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 21.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return UsercardItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: _buildFiftyFive(
            context,
            zipcode1: "2000",
            zipcode2: "1600",
            zipcode3: "1200",
            eightHundred: "800",
            fourHundred: "400",
            zero: "0",
          ),
        ),
        Container(
          height: 212.v,
          width: 321.h,
          margin: EdgeInsets.only(left: 3.h),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 211.v,
                  width: 321.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 305.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 13.v,
                    right: 8.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup46BlueA200,
                        height: 199.v,
                        width: 14.h,
                      ),
                      Spacer(
                        flex: 20,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup46,
                        height: 82.v,
                        width: 14.h,
                        margin: EdgeInsets.only(top: 117.v),
                      ),
                      Spacer(
                        flex: 19,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup46BlueA200,
                        height: 134.v,
                        width: 14.h,
                        margin: EdgeInsets.only(top: 65.v),
                      ),
                      Spacer(
                        flex: 19,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup46BlueA200,
                        height: 134.v,
                        width: 14.h,
                        margin: EdgeInsets.only(top: 65.v),
                      ),
                      Spacer(
                        flex: 21,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup46BlueA200,
                        height: 199.v,
                        width: 14.h,
                      ),
                      Spacer(
                        flex: 19,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup46,
                        height: 100.v,
                        width: 14.h,
                        margin: EdgeInsets.only(top: 99.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup46BlueA200,
                        height: 116.v,
                        width: 14.h,
                        margin: EdgeInsets.only(
                          left: 29.h,
                          top: 83.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildZipcode1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: _buildFiftyFive(
            context,
            zipcode1: "2000",
            zipcode2: "1600",
            zipcode3: "1200",
            eightHundred: "800",
            fourHundred: "400",
            zero: "0",
          ),
        ),
        Container(
          height: 212.v,
          width: 321.h,
          margin: EdgeInsets.only(left: 3.h),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 211.v,
                  width: 321.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup54,
                height: 199.v,
                width: 305.h,
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildZipcode2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: _buildFiftyFive(
            context,
            zipcode1: "2000",
            zipcode2: "1600",
            zipcode3: "1200",
            eightHundred: "800",
            fourHundred: "400",
            zero: "0",
          ),
        ),
        Container(
          height: 212.v,
          width: 321.h,
          margin: EdgeInsets.only(left: 3.h),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 211.v,
                  width: 321.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup54,
                height: 199.v,
                width: 305.h,
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPedometerComponent(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 26.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return PedometercomponentItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildZipcode3(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: _buildFiftyFive(
            context,
            zipcode1: "2000",
            zipcode2: "1600",
            zipcode3: "1200",
            eightHundred: "800",
            fourHundred: "400",
            zero: "0",
          ),
        ),
        Container(
          height: 212.v,
          width: 321.h,
          margin: EdgeInsets.only(left: 3.h),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 211.v,
                  width: 321.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup54,
                height: 199.v,
                width: 305.h,
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildZipcode4(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: _buildFiftyFive(
            context,
            zipcode1: "2000",
            zipcode2: "1600",
            zipcode3: "1200",
            eightHundred: "800",
            fourHundred: "400",
            zero: "0",
          ),
        ),
        Container(
          height: 212.v,
          width: 321.h,
          margin: EdgeInsets.only(left: 3.h),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 211.v,
                  width: 321.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup54,
                height: 199.v,
                width: 305.h,
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFiftyFive(
    BuildContext context, {
    required String zipcode1,
    required String zipcode2,
    required String zipcode3,
    required String eightHundred,
    required String fourHundred,
    required String zero,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          zipcode1,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        SizedBox(height: 28.v),
        Text(
          zipcode2,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        SizedBox(height: 28.v),
        Text(
          zipcode3,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        SizedBox(height: 28.v),
        Text(
          eightHundred,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        SizedBox(height: 28.v),
        Text(
          fourHundred,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        SizedBox(height: 28.v),
        Text(
          zero,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFortyFour(
    BuildContext context, {
    required String sunText,
    required String monText,
    required String tueText,
    required String wedText,
    required String thursText,
    required String friText,
    required String satText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          sunText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          monText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          tueText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          wedText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          thursText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          friText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          satText,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray60002,
          ),
        ),
      ],
    );
  }
}
