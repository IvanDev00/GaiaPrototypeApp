import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HmtThirtyTwoBottomsheet extends StatelessWidget {
  const HmtThirtyTwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 29.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL22,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 4.v,
              width: 40.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray10001,
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
              ),
            ),
            SizedBox(height: 30.v),
            Text(
              "Front Squat",
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumPrimary18,
            ),
            SizedBox(height: 16.v),
            _buildFrontSquatWidget(context),
            SizedBox(height: 20.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Instructions",
                style: CustomTextStyles.titleSmallPrimary_1,
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              width: 333.h,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem a est hendrerit placerat. Aenean molestie id mi non egestas. Maecenas eu semper libero, sit amet dictum risus. Curabitur eget diam eget metus facilisis egestas vel in ligula. Duis vulputate eu nisl in porttitor. Aenean dolor ante, egestas vitae enim at, porta bibendum quam. Quisque ut arcu eu orci consequat blandit",
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray80010_1,
              ),
            ),
            SizedBox(height: 40.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrontSquatWidget(BuildContext context) {
    return SizedBox(
      height: 168.v,
      width: 333.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage13,
            height: 168.v,
            width: 333.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrameWhiteA700,
            height: 36.adaptSize,
            width: 36.adaptSize,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 60.v),
          ),
        ],
      ),
    );
  }
}
