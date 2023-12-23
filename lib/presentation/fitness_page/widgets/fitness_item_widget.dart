import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FitnessItemWidget extends StatelessWidget {
  const FitnessItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          padding: EdgeInsets.all(13.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup30,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          "Timer",
          style: CustomTextStyles.labelMediumPrimary,
        ),
      ],
    );
  }
}
