import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';
import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';

class ForgotPasswordScreenOneScreen extends StatelessWidget {
  ForgotPasswordScreenOneScreen({Key? key})
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
                  SizedBox(
                    height: SizeUtils.height,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 44.h,
                              right: 44.h,
                              bottom: 114.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "House of Gaia",
                                  style: CustomTextStyles.titleMediumMedium_1,
                                ),
                                Text(
                                  "Please enter your credentials to login.",
                                  style: CustomTextStyles.bodySmallGray80012,
                                ),
                                SizedBox(height: 44.v),
                                _buildLoginForm(context),
                                SizedBox(height: 15.v),
                                _buildPasswordForm(context),
                                SizedBox(height: 9.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Forgot password?",
                                    style: CustomTextStyles.bodySmallPrimary,
                                  ),
                                ),
                                SizedBox(height: 38.v),
                                CustomOutlinedButton(
                                  text: "Login",
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgMobileLoginCuateBlueGray800,
                          height: 249.adaptSize,
                          width: 249.adaptSize,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 158.v),
                        ),
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
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: SizeUtils.height,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: appTheme.gray90082,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.v),
                  _buildForgotPasswordForm(context),
                  SizedBox(height: 155.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgForgotPasswordBro,
                    height: 284.adaptSize,
                    width: 284.adaptSize,
                  ),
                  SizedBox(height: 108.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 41.h,
                      right: 48.h,
                    ),
                    child: CustomTextFormField(
                      controller: emailController1,
                      hintText: "Enter your email address",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(height: 36.v),
                  CustomOutlinedButton(
                    text: "Send request",
                    margin: EdgeInsets.only(
                      left: 42.h,
                      right: 47.h,
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
  Widget _buildLoginForm(BuildContext context) {
    return Column(
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
    );
  }

  /// Section Widget
  Widget _buildPasswordForm(BuildContext context) {
    return Column(
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
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordForm(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 173.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 18.v),
          Container(
            height: 1.v,
            width: 40.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray10001,
            ),
          ),
        ],
      ),
    );
  }
}
