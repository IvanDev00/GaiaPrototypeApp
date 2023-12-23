import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

class SplashScreenThreeScreen extends StatelessWidget {
  const SplashScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup1097,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildSplashScreenThreeStack(context),
                  SizedBox(height: 160.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGreenLogoPlain,
                        height: 109.v,
                        width: 198.h,
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 109.v),
                      _buildGreenLogoPlainVectorStack(context),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSplashScreenThreeStack(BuildContext context) {
    return SizedBox(
      height: 210.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup16Teal300,
            height: 209.v,
            width: 166.h,
            alignment: Alignment.centerRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup7,
            height: 210.v,
            width: 256.h,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGreenLogoPlainVectorStack(BuildContext context) {
    return SizedBox(
      height: 267.v,
      width: 379.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup11Indigo200,
            height: 262.v,
            width: 337.h,
            alignment: Alignment.centerLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorIndigo200,
            height: 136.v,
            width: 100.h,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
