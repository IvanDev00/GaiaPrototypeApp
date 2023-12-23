import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class UsercardItemWidget extends StatelessWidget {
  const UsercardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: 78.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgUserWhiteA700,
            height: 38.v,
            width: 27.h,
          ),
          SizedBox(height: 8.v),
          Text(
            "40",
            style: CustomTextStyles.labelSmallRed700,
          ),
          SizedBox(height: 1.v),
          Text(
            "Blood Age",
            style: CustomTextStyles.bodySmallRed700,
          ),
        ],
      ),
    );
  }
}
