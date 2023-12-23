import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class PrAddrecordoneBottomsheet extends StatelessWidget {
  const PrAddrecordoneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return _buildRepsSection(context);
  }

  /// Section Widget
  Widget _buildRepsSection(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 44.h,
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
              "Save your record",
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumPrimary18,
            ),
            SizedBox(height: 10.v),
            Text(
              "Back Squat",
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 36.v),
            CustomOutlinedButton(
              text: "Reps",
              buttonStyle: CustomButtonStyles.outlineGray,
              buttonTextStyle: CustomTextStyles.bodyMediumBluegray200,
            ),
            SizedBox(height: 36.v),
            CustomOutlinedButton(
              text: "Save Result",
            ),
            SizedBox(height: 70.v),
          ],
        ),
      ),
    );
  }
}
