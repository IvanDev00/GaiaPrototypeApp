import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';
import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CommunityboardSevenBottomsheet extends StatelessWidget {
  CommunityboardSevenBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController shareYourThoughtsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
          SizedBox(height: 22.v),
          Text(
            "Create Post",
            style: CustomTextStyles.titleMediumPrimary18,
          ),
          SizedBox(height: 12.v),
          CustomTextFormField(
            controller: shareYourThoughtsController,
            hintText: "Share your thoughts",
            textInputAction: TextInputAction.done,
            maxLines: 10,
            contentPadding: EdgeInsets.all(18.h),
          ),
          SizedBox(height: 32.v),
          CustomOutlinedButton(
            text: "Post",
          ),
          SizedBox(height: 55.v),
        ],
      ),
    );
  }
}
