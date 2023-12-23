import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_trailing_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';
import 'package:gaiadhiwise/widgets/custom_elevated_button.dart';
import 'package:gaiadhiwise/widgets/custom_icon_button.dart';
import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';

class AskaiScreen extends StatelessWidget {
  AskaiScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 135.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillGray200.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    Text(
                      "Welcome! What can I do for you?",
                      style: CustomTextStyles.bodySmallGray80012,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              CustomElevatedButton(
                width: 54.h,
                text: "Hello",
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildMessageRow(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgPlay,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 14.v,
          bottom: 15.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(
          children: [
            AppbarSubtitleTwo(
              text: "Fiona",
              margin: EdgeInsets.only(right: 5.h),
            ),
            AppbarSubtitleFour(
              text: "A.I Chatbot",
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrameWhiteA70030x30,
          margin: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 15.v,
          ),
        ),
      ],
      styleType: Style.bgStyle_10,
    );
  }

  /// Section Widget
  Widget _buildMessageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 15.h,
        bottom: 18.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: messageController,
              hintText: "Type a message",
              hintStyle: CustomTextStyles.bodyMediumGray60002,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray200,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL20,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameWhiteA70040x40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
