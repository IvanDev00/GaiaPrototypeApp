import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "BMI",
            style: CustomTextStyles.titleSmallWhiteA700,
          ),
          SizedBox(height: 14.v),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "Starting",
                      style: CustomTextStyles.bodySmallWhiteA70010,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 59.h),
                    child: Text(
                      "24.4",
                      style: CustomTextStyles.labelMediumWhiteA700_1,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Current",
                    style: CustomTextStyles.bodySmallWhiteA70010,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 69.h),
                    child: Text(
                      "23",
                      style: CustomTextStyles.labelMediumWhiteA700_1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Goal",
                    style: CustomTextStyles.bodySmallWhiteA70010,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 84.h),
                    child: Text(
                      "23",
                      style: CustomTextStyles.labelMediumWhiteA700_1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }
}
