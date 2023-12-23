import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_text_form_field.dart';

class CommunityboardCommentsScreen extends StatelessWidget {
  CommunityboardCommentsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController createPostController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildArrowDownSection(context),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.fillGray,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 68.v),
                      Expanded(
                        child: Container(
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL22,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 21.v),
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
                                "Comments",
                                style: CustomTextStyles.titleMediumPrimary18,
                              ),
                              SizedBox(height: 14.v),
                              Divider(),
                              SizedBox(height: 13.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.h),
                                child: _buildFireflyDaisiesSection(
                                  context,
                                  userName: "John Doe",
                                  userDescription:
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque eget est nec dignissim. Aliquam tincidunt lacus a libero congue dictum. Nunc ultricies est eu urna pellentesque mattis. Etiam risus neque, molestie a ultricies nec, ullamcorper a ex. Maecenas condimentum id nibh ac porta. Phasellus accumsan mi elit, sit amet mattis leo sagittis et. Proin rhoncus imperdiet enim, non ultricies ex facilisis quis. Nullam a cursus dolor. Nunc vitae aliquam ipsum. Sed quis leo laoreet, dictum dolor nec, convallis augue. Nullam sit amet ullamcorper quam, ac placerat dui. Fusce iaculis non urna ac efficitur. Pellentesque vitae placerat odio. Cras consectetur rhoncus ipsum in mollis. ",
                                ),
                              ),
                              SizedBox(height: 14.v),
                              _buildFireflyDaisiesSection2(context),
                              SizedBox(height: 14.v),
                              _buildFireflyDaisiesSection3(context),
                              SizedBox(height: 14.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.h),
                                child: _buildFireflyDaisiesSection(
                                  context,
                                  userName: "John Doe",
                                  userDescription:
                                      "Vestibulum elementum diam ac posuere facilisis. Morbi turpis purus, suscipit vitae finibus eleifend, euismod in nibh. Mauris lobortis mi at nibh dapibus gravida. Fusce interdum mattis mauris vitae aliquam. Mauris mollis volutpat risus at iaculis. Vivamus accumsan accumsan dictum. Curabitur in scelerisque nunc.",
                                ),
                              ),
                              SizedBox(height: 14.v),
                              _buildFireflyDaisiesSection5(context),
                              Spacer(),
                              _buildLineFiveSection(context),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildCreatePostSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDownSection(BuildContext context) {
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

  /// Section Widget
  Widget _buildFireflyDaisiesSection2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 34.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFireflyDaisies30x30,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(bottom: 23.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: CustomTextStyles.labelMediumSemiBold_1,
                  ),
                  SizedBox(
                    width: 296.h,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque eget est nec dignissim. Aliquam tincidunt lacus a libero congue dictum. Nunc ultricies est eu urna pellentesque mattis.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFireflyDaisiesSection3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 31.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFireflyDaisies30x30,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(bottom: 71.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: CustomTextStyles.labelMediumSemiBold_1,
                  ),
                  SizedBox(
                    width: 299.h,
                    child: Text(
                      "Etiam risus neque, molestie a ultricies nec, ullamcorper a ex. Maecenas condimentum id nibh ac porta. Phasellus accumsan mi elit, sit amet mattis leo sagittis et. Proin rhoncus imperdiet enim, non ultricies ex facilisis quis. Nullam a cursus dolor. Nunc vitae aliquam ipsum. Sed quis leo laoreet, dictum dolor nec, convallis augue. Nullam sit amet ullamcorper quam, ac placerat dui. Fusce iaculis non urna ac efficitur. Pellentesque vitae placerat odio. Cras consectetur rhoncus ipsum in mollis. ",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFireflyDaisiesSection5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFireflyDaisies30x30,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(bottom: 35.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: CustomTextStyles.labelMediumSemiBold_1,
                  ),
                  SizedBox(
                    width: 307.h,
                    child: Text(
                      "Ut tempor tincidunt eros, ut convallis lacus imperdiet vel. Aliquam ut pretium mi. Proin vel ligula ultricies, pulvinar risus vel, fermentum velit. Donec vitae feugiat leo. Sed tincidunt interdum est eu dapibus. Curabitur ultrices pulvinar dui sed posuere. Maecenas nec volutpat eros, in ultricies felis.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineFiveSection(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.fillWhiteA,
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
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 5.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "Add a comment",
                  style: CustomTextStyles.bodySmallBluegray200,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgFramePrimary20x20,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  top: 7.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCreatePostSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          top: 98.v,
          right: 23.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFormField(
              controller: createPostController,
              hintText: "Create post",
              hintStyle: CustomTextStyles.bodySmallBluegray200,
              textInputAction: TextInputAction.done,
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
            SizedBox(height: 22.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "News Feed",
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 19.v),
            SizedBox(
              height: 192.v,
              width: 345.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFireflyDaisiesSection1(
                          context,
                          userName: "John Doe",
                          userMonth: "December 17 2023",
                        ),
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
                        Row(
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
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame18x18,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                            ),
                          ],
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "View all 5 comments",
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMoreHorizontal,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 3.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            _buildFireflyDaisiesSection1(
              context,
              userName: "John Doe",
              userMonth: "December 17 2023",
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameSecondarycontainer,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
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
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame18x18,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ],
            ),
            SizedBox(height: 3.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "View all 5 comments",
                style: CustomTextStyles.bodySmall10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFireflyDaisiesSection(
    BuildContext context, {
    required String userName,
    required String userDescription,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFireflyDaisies30x30,
          height: 30.adaptSize,
          width: 30.adaptSize,
          radius: BorderRadius.circular(
            15.h,
          ),
          margin: EdgeInsets.only(bottom: 47.v),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: CustomTextStyles.labelMediumSemiBold_1.copyWith(
                    color: appTheme.gray800,
                  ),
                ),
                SizedBox(
                  width: 305.h,
                  child: Text(
                    userDescription,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray600.copyWith(
                      color: appTheme.gray600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFireflyDaisiesSection1(
    BuildContext context, {
    required String userName,
    required String userMonth,
  }) {
    return Row(
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
                userName,
                style: CustomTextStyles.labelLargeSemiBold_1.copyWith(
                  color: appTheme.gray800,
                ),
              ),
              Text(
                userMonth,
                style: CustomTextStyles.bodySmallGray600.copyWith(
                  color: appTheme.gray600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
