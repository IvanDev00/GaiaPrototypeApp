import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  const SplashScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 196.h,
                        vertical: 425.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup1097,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGreenLogoPlain,
                        height: 1.adaptSize,
                        width: 1.adaptSize,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup16,
                    height: 209.v,
                    width: 166.h,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup7,
                    height: 210.v,
                    width: 256.h,
                    alignment: Alignment.topLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup11Indigo200,
                    height: 262.v,
                    width: 337.h,
                    alignment: Alignment.bottomLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorIndigo200,
                    height: 136.v,
                    width: 100.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 13.h),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
