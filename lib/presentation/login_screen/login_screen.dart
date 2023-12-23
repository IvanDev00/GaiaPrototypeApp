import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {LoginScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [_buildMobileLoginCuate(context), SizedBox(height: 3.v), Text("House of Gaia", style: CustomTextStyles.titleMediumMedium_1), Text("Please enter your credentials to login.", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 44.v), _buildTwentyThree(context), SizedBox(height: 15.v), _buildTwentyTwo(context), SizedBox(height: 9.v), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapTxtForgotPassword(context);}, child: Padding(padding: EdgeInsets.only(right: 45.h), child: Text("Forgot password?", style: CustomTextStyles.bodySmallPrimary)))), SizedBox(height: 38.v), CustomOutlinedButton(text: "Login", margin: EdgeInsets.only(left: 45.h, right: 44.h), onPressed: () {onTapLogin(context);}), SizedBox(height: 5.v)]))))); } 
/// Section Widget
Widget _buildMobileLoginCuate(BuildContext context) { return SizedBox(height: 407.v, width: double.maxFinite, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgMobileLoginCuate, height: 249.adaptSize, width: 249.adaptSize, alignment: Alignment.bottomCenter), CustomImageView(imagePath: ImageConstant.imgGroup5, height: 87.v, width: 185.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 30.h)), CustomImageView(imagePath: ImageConstant.imgVectorTeal30001, height: 199.v, width: 95.h, alignment: Alignment.topRight), CustomImageView(imagePath: ImageConstant.imgGroup6, height: 179.v, width: 110.h, alignment: Alignment.topLeft), CustomImageView(imagePath: ImageConstant.imgVectorPrimary, height: 121.v, width: 98.h, alignment: Alignment.topRight)])); } 
/// Section Widget
Widget _buildTwentyThree(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 44.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Email Address", style: CustomTextStyles.bodySmallGray80012), SizedBox(height: 2.v), CustomTextFormField(controller: emailController, hintText: "Enter your email address", textInputType: TextInputType.emailAddress)])); } 
/// Section Widget
Widget _buildTwentyTwo(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 44.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Password", style: CustomTextStyles.bodySmallGray80012)), SizedBox(height: 2.v), CustomTextFormField(controller: passwordController, hintText: "Enter your password", textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgEye1, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 40.v), obscureText: true, contentPadding: EdgeInsets.only(left: 16.h, top: 9.v, bottom: 9.v))])); } 
/// Navigates to the forgotPasswordScreenOneScreen when the action is triggered.
onTapTxtForgotPassword(BuildContext context) { Navigator.pushNamed(context, AppRoutes.forgotPasswordScreenOneScreen); } 
/// Navigates to the dailyContainer1Screen when the action is triggered.
onTapLogin(BuildContext context) { Navigator.pushNamed(context, AppRoutes.dailyContainer1Screen); } 
 }
