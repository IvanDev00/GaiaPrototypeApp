import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class DaItemWidget extends StatelessWidget {
  const DaItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgD639724a29774,
        height: 58.adaptSize,
        width: 58.adaptSize,
        radius: BorderRadius.circular(
          4.h,
        ),
      ),
    );
  }
}
