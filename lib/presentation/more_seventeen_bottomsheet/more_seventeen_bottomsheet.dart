import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class MoreSeventeenBottomsheet extends StatelessWidget {
  const MoreSeventeenBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 29.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL22,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
              "CGM Individuals Value",
              style: CustomTextStyles.titleMedium18,
            ),
            SizedBox(height: 12.v),
            Text(
              "2023-10-28 (Saturday)",
              style: CustomTextStyles.bodyMediumGray60002,
            ),
            SizedBox(height: 56.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img030cfc6229ff484x84,
                  height: 84.adaptSize,
                  width: 84.adaptSize,
                  radius: BorderRadius.circular(
                    6.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img030cfc6229ff484x84,
                  height: 84.adaptSize,
                  width: 84.adaptSize,
                  radius: BorderRadius.circular(
                    6.h,
                  ),
                  margin: EdgeInsets.only(left: 50.h),
                ),
              ],
            ),
            SizedBox(height: 9.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "Before Meal",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 57.h),
                  child: Text(
                    "After Meal",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Note",
                style: theme.textTheme.titleSmall,
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              width: 334.h,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sit amet volutpat eros, eget dictum elit. Sed bibendum bibendum purus. Nulla facilisi. Etiam sem urna, viverra sed gravida eu, viverra vitae purus. Aliquam magna felis, fringilla nec odio sed, tempor volutpat enim. Donec sit amet leo vitae arcu imperdiet ullamcorper. Integer semper augue massa, quis varius magna vulputate vitae. Vivamus orci enim, scelerisque sed mi ac, vehicula sollicitudin orci. Donec ultrices vel massa nec maximus. Nam et ornare urna.",
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray80010_1.copyWith(
                  height: 1.20,
                ),
              ),
            ),
            SizedBox(height: 70.v),
            CustomOutlinedButton(
              width: 90.h,
              text: "Close",
              buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
            ),
            SizedBox(height: 24.v),
          ],
        ),
      ),
    );
  }
}
