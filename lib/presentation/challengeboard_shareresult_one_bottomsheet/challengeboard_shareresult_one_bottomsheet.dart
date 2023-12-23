import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ChallengeboardShareresultOneBottomsheet extends StatelessWidget {
  const ChallengeboardShareresultOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 44.h,
          vertical: 21.v,
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
              "Share your result",
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumPrimary18,
            ),
            SizedBox(height: 10.v),
            Text(
              "Deadlift 1x3",
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 36.v),
            _buildRepsButton(context),
            SizedBox(height: 28.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildRxButton(context),
                _buildScaledButton(context),
              ],
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: 300.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Note:",
                      style: CustomTextStyles.labelSmallBold,
                    ),
                    TextSpan(
                      text: " Within fitness community, ",
                      style: CustomTextStyles.bodySmallGray800_1,
                    ),
                    TextSpan(
                      text: "'Rx'",
                      style: CustomTextStyles.labelSmallBold,
                    ),
                    TextSpan(
                      text:
                          " signifies the challenging, standard version of a workout, while ",
                      style: CustomTextStyles.bodySmallGray800_1,
                    ),
                    TextSpan(
                      text:
                          "'Scaled' offers a modified option, ensuring inclusivity and accessibility for participants of diverse fitness levels.",
                      style: CustomTextStyles.labelSmallBold,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 52.v),
            _buildSaveResultButton(context),
            SizedBox(height: 69.v),
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
  Widget _buildRxButton(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "RX",
        margin: EdgeInsets.only(right: 19.h),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL6,
        buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildScaledButton(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Scaled",
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
