import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray30002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFireflyDaisies,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
              bottom: 3.v,
            ),
            child: Text(
              "Jhonnel Garcia",
              style: theme.textTheme.labelMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 3.v,
            ),
            child: Text(
              "184",
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
