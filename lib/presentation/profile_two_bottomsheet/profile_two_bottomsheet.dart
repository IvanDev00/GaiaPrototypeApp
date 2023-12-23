import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileTwoBottomsheet extends StatelessWidget {
  const ProfileTwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 176.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL22,
        ),
        child: Container(
          height: 3.v,
          width: 40.h,
          decoration: BoxDecoration(
            color: appTheme.blueGray10001,
            borderRadius: BorderRadius.circular(
              1.h,
            ),
          ),
        ),
      ),
    );
  }
}
