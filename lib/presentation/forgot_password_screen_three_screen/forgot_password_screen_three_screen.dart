import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';
import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';

class ForgotPasswordScreenThreeScreen extends StatelessWidget {
  ForgotPasswordScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildLoginStack(context),
                  SizedBox(height: 3.v),
                  Text(
                    "House of Gaia",
                    style: CustomTextStyles.titleMediumMedium_1,
                  ),
                  Text(
                    "Please enter your credentials to login.",
                    style: CustomTextStyles.bodySmallGray80012,
                  ),
                  SizedBox(height: 44.v),
                  _buildEmailColumn(context),
                  SizedBox(height: 15.v),
                  _buildPasswordColumn(context),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 45.h),
                      child: Text(
                        "Forgot password?",
                        style: CustomTextStyles.bodySmallPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 38.v),
                  CustomOutlinedButton(
                    text: "Login",
                    margin: EdgeInsets.only(
                      left: 45.h,
                      right: 44.h,
                    ),
                  ),
                  SizedBox(height: 143.v),
                  SizedBox(
                    height: 702.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 176.h,
                              vertical: 18.v,
                            ),
                            decoration: BoxDecoration(
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
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 57.h,
                              right: 54.h,
                              bottom: 229.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Forgot Password",
                                  style: CustomTextStyles.titleMediumMedium,
                                ),
                                SizedBox(height: 6.v),
                                SizedBox(
                                  width: 282.h,
                                  child: Text(
                                    "Please enter your email address and we will send you a link to reset your password.",
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodySmallGray80012,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 44.h,
                              right: 44.h,
                              bottom: 71.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgForgotPasswordBro,
                                  height: 284.adaptSize,
                                  width: 284.adaptSize,
                                ),
                                SizedBox(height: 108.v),
                                CustomTextFormField(
                                  controller: emailController1,
                                  hintText: "Enter your email address",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress,
                                ),
                                SizedBox(height: 36.v),
                                CustomOutlinedButton(
                                  text: "Send request",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginStack(BuildContext context) {
    return SizedBox(
      height: 407.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup5Indigo200,
            height: 87.v,
            width: 185.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 30.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorTeal30001,
            height: 199.v,
            width: 95.h,
            alignment: Alignment.topRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup6,
            height: 179.v,
            width: 110.h,
            alignment: Alignment.topLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorPrimary,
            height: 121.v,
            width: 98.h,
            alignment: Alignment.topRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMobileLoginCuate,
            height: 249.adaptSize,
            width: 249.adaptSize,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 44.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email Address",
            style: CustomTextStyles.bodySmallGray80012,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "Enter your email address",
            textInputType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 44.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Password",
              style: CustomTextStyles.bodySmallGray80012,
            ),
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: passwordController,
            hintText: "Enter your password",
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye1,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 40.v,
            ),
            obscureText: true,
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }
}
