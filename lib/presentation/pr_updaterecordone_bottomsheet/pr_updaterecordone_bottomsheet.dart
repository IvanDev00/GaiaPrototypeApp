import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class PrUpdaterecordoneBottomsheet extends StatelessWidget {
  const PrUpdaterecordoneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
              "Update your record",
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumPrimary18,
            ),
            SizedBox(height: 10.v),
            Text(
              "Bench Press",
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 36.v),
            _buildRepsButton(context),
            SizedBox(height: 16.v),
            _buildWeightButton(context),
            SizedBox(height: 16.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLbsButton(context),
                _buildKgButton(context),
              ],
            ),
            SizedBox(height: 36.v),
            _buildSaveResultButton(context),
            SizedBox(height: 70.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRepsButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Reps",
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.bodyMediumBluegray200,
    );
  }

  /// Section Widget
  Widget _buildWeightButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Weight",
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.bodyMediumBluegray200,
    );
  }

  /// Section Widget
  Widget _buildLbsButton(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "LBS",
        margin: EdgeInsets.only(right: 19.h),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL6,
        buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildKgButton(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "KG",
        margin: EdgeInsets.only(left: 19.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveResultButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Save Result",
    );
  }
}
