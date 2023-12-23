import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 142.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img030cfc6229ff4,
              height: 58.adaptSize,
              width: 58.adaptSize,
              radius: BorderRadius.circular(
                4.h,
              ),
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dinner",
                    style: theme.textTheme.titleMedium,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Taste Score:",
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
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Satiety Score:",
                          style: CustomTextStyles.bodySmallGray80010,
                        ),
                        TextSpan(
                          text: " 9",
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
      ),
    );
  }
}
