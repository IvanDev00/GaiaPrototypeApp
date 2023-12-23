import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class Widget3ItemWidget extends StatelessWidget {
  const Widget3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage17,
      height: 80.v,
      width: 64.h,
      radius: BorderRadius.circular(
        6.h,
      ),
    );
  }
}
