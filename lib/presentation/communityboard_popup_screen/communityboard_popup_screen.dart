import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';

class CommunityboardPopupScreen extends StatelessWidget {
  CommunityboardPopupScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fireflydaisiespainteController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 23.h,
                    top: 160.v,
                    right: 23.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "News Feed",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 19.v),
                      _buildFireflyDaisiesRow(context),
                      SizedBox(height: 8.v),
                      SizedBox(
                        width: 344.h,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque eget est nec dignissim. Aliquam tincidunt lacus a libero congue dictum. Nunc ultricies est eu urna pellentesque mattis. Etiam risus neque, molestie a ultricies nec, ullamcorper a ex. Maecenas condimentum id nibh ac porta. Phasellus accumsan mi elit, sit amet mattis leo sagittis et. Proin rhoncus imperdiet enim, non ultricies ex facilisis quis. Nullam a cursus dolor. Nunc vitae aliquam ipsum. Sed quis leo laoreet, dictum dolor nec, convallis augue. Nullam sit amet ullamcorper quam, ac placerat dui. Fusce iaculis non urna ac efficitur. Pellentesque vitae placerat odio. Cras consectetur rhoncus ipsum in mollis.",
                          maxLines: 9,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallGray800,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildSixteenRow(context),
                      SizedBox(height: 3.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "View all 5 comments",
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildMonthRow(context),
                      SizedBox(height: 8.v),
                      SizedBox(
                        width: 344.h,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque eget est nec dignissim. Aliquam tincidunt lacus a libero congue dictum. Nunc ultricies est eu urna pellentesque mattis. Etiam risus neque, molestie a ultricies nec, ullamcorper a ex. Maecenas condimentum id nibh ac porta. Phasellus accumsan mi elit, sit amet mattis leo sagittis et. Proin rhoncus imperdiet enim, non ultricies ex facilisis quis. Nullam a cursus dolor. Nunc vitae aliquam ipsum. Sed quis leo laoreet, dictum dolor nec, convallis augue. Nullam sit amet ullamcorper quam, ac placerat dui. Fusce iaculis non urna ac efficitur. Pellentesque vitae placerat odio. Cras consectetur rhoncus ipsum in mollis.",
                          maxLines: 9,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallGray800,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildSixteenColumn(context),
                    ],
                  ),
                ),
              ),
              _buildArrowDown(context),
              Padding(
                padding: EdgeInsets.only(top: 98.v),
                child: CustomTextFormField(
                  width: 345.h,
                  controller: fireflydaisiespainteController,
                  hintText: "Create post",
                  hintStyle: CustomTextStyles.bodySmallBluegray200,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.topCenter,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(8.h, 8.v, 10.h, 8.v),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12.h,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgFireflyDaisiesPaintedInWatercolorPhotoCyberpunkHyperRealisticWatercolor690411,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 40.v,
                  ),
                  suffix: Container(
                    padding: EdgeInsets.all(4.h),
                    margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlus1,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 40.v,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 11.v),
                  borderDecoration: TextFormFieldStyleHelper.outlineGrayTL6,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 112.h,
                    vertical: 330.v,
                  ),
                  decoration: AppDecoration.fillGray,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 58.v),
                      Container(
                        width: 168.h,
                        margin: EdgeInsets.only(left: 1.h),
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrameGray60002,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              alignment: Alignment.centerRight,
                            ),
                            SizedBox(height: 2.v),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: _buildBlockUser(
                                context,
                                userImage: ImageConstant.imgFramePrimary16x16,
                                blockUserText: "Add friend",
                              ),
                            ),
                            SizedBox(height: 12.v),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: _buildBlockUser(
                                context,
                                userImage: ImageConstant.imgFrame16x16,
                                blockUserText: "Block user",
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFrame5,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                      "Flag",
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 18.v),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFireflyDaisiesRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFireflyDaisies30x30,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John Doe",
                  style: CustomTextStyles.labelLargeSemiBold_1,
                ),
                Text(
                  "December 17 2023",
                  style: CustomTextStyles.bodySmallGray600,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgMoreHorizontal,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrameGray800,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "16",
                  style: CustomTextStyles.bodySmallGray80012,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFrameGray80018x18,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(left: 16.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "5",
                  style: CustomTextStyles.bodySmallGray80012,
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame18x18,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMonthRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 30.v,
            width: 110.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "December 17 2023",
                      style: CustomTextStyles.bodySmallGray600,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFireflyDaisies30x30,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 12.v,
                        ),
                        child: Text(
                          "John Doe",
                          style: CustomTextStyles.labelLargeSemiBold_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMoreHorizontal,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteenColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 79.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 33.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFrameSecondarycontainer,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                          Text(
                            "16",
                            style: CustomTextStyles.bodySmallGray80012,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrameGray80018x18,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "5",
                            style: CustomTextStyles.bodySmallGray80012,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFrame18x18,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ],
          ),
        ),
        SizedBox(height: 3.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "View all 5 comments",
            style: CustomTextStyles.bodySmall10,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 730.v),
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 37.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup1061,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 22.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 64.h,
                bottom: 19.v,
              ),
              child: Text(
                "Community Board",
                style: CustomTextStyles.titleMediumWhiteA70018,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildBlockUser(
    BuildContext context, {
    required String userImage,
    required String blockUserText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(
            blockUserText,
            style: theme.textTheme.labelMedium!.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ),
      ],
    );
  }
}
