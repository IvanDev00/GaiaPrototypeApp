import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';
import 'package:gaiadhiwise/widgets/custom_search_view.dart';

class CommunityboardCommentsOneScreen extends StatelessWidget {
  CommunityboardCommentsOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildArrowDown(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 98.v),
                                child: CustomSearchView(
                                  width: 345.h,
                                  controller: searchController,
                                  hintText: "Create post",
                                  alignment: Alignment.topCenter,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 11.v),
                                ),
                              ),
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
                            _buildNewsFeed(context),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.customBorderTL22,
                        ),
                        child: Column(
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
                            SizedBox(height: 30.v),
                            Text(
                              "Comments",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumPrimary18,
                            ),
                            SizedBox(height: 22.v),
                            Divider(),
                            SizedBox(height: 13.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: _buildFireflyDaisies(
                                context,
                                userName: "John Doe",
                                userDescription:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque eget est nec dignissim. Aliquam tincidunt lacus a libero congue dictum. Nunc ultricies est eu urna pellentesque mattis. Etiam risus neque, molestie a ultricies nec, ullamcorper a ex. Maecenas condimentum id nibh ac porta. Phasellus accumsan mi elit, sit amet mattis leo sagittis et. Proin rhoncus imperdiet enim, non ultricies ex facilisis quis. Nullam a cursus dolor. Nunc vitae aliquam ipsum. Sed quis leo laoreet, dictum dolor nec, convallis augue. Nullam sit amet ullamcorper quam, ac placerat dui. Fusce iaculis non urna ac efficitur. Pellentesque vitae placerat odio. Cras consectetur rhoncus ipsum in mollis. ",
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: _buildFireflyDaisies(
                                context,
                                userName: "John Doe",
                                userDescription:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque eget est nec dignissim. Aliquam tincidunt lacus a libero congue dictum. Nunc ultricies est eu urna pellentesque mattis.",
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: _buildFireflyDaisies(
                                context,
                                userName: "John Doe",
                                userDescription:
                                    "Etiam risus neque, molestie a ultricies nec, ullamcorper a ex. Maecenas condimentum id nibh ac porta. Phasellus accumsan mi elit, sit amet mattis leo sagittis et. Proin rhoncus imperdiet enim, non ultricies ex facilisis quis. Nullam a cursus dolor. Nunc vitae aliquam ipsum. Sed quis leo laoreet, dictum dolor nec, convallis augue. Nullam sit amet ullamcorper quam, ac placerat dui. Fusce iaculis non urna ac efficitur. Pellentesque vitae placerat odio. Cras consectetur rhoncus ipsum in mollis. ",
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: _buildFireflyDaisies(
                                context,
                                userName: "John Doe",
                                userDescription:
                                    "Vestibulum elementum diam ac posuere facilisis. Morbi turpis purus, suscipit vitae finibus eleifend, euismod in nibh. Mauris lobortis mi at nibh dapibus gravida. Fusce interdum mattis mauris vitae aliquam. Mauris mollis volutpat risus at iaculis. Vivamus accumsan accumsan dictum. Curabitur in scelerisque nunc.",
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: _buildFireflyDaisies(
                                context,
                                userName: "John Doe",
                                userDescription:
                                    "Ut tempor tincidunt eros, ut convallis lacus imperdiet vel. Aliquam ut pretium mi. Proin vel ligula ultricies, pulvinar risus vel, fermentum velit. Donec vitae feugiat leo. Sed tincidunt interdum est eu dapibus. Curabitur ultrices pulvinar dui sed posuere. Maecenas nec volutpat eros, in ultricies felis.",
                              ),
                            ),
                            SizedBox(height: 133.v),
                            Divider(),
                            _buildFireflyDaisies6(context),
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
  Widget _buildArrowDown(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 37.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup1061,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 19.v),
          CustomAppBar(
            height: 27.v,
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.only(
                left: 24.h,
                bottom: 2.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "Community Board",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewsFeed(BuildContext context) {
    return Align(
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
            Row(
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
                  child: _buildJohnDoe(
                    context,
                    userName: "John Doe",
                    monthText: "December 17 2023",
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
                SizedBox(
                  width: 34.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameGray800,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                      Text(
                        "16",
                        style: CustomTextStyles.bodySmallGray80012,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildFive(
                    context,
                    labelText: "5",
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
            SizedBox(height: 16.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
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
                    child: _buildJohnDoe(
                      context,
                      userName: "John Doe",
                      monthText: "December 17 2023",
                    ),
                  ),
                ],
              ),
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
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildFive(
                    context,
                    labelText: "5",
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

  /// Section Widget
  Widget _buildFireflyDaisies6(BuildContext context) {
    return Container(
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
              top: 9.v,
              bottom: 9.v,
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
    );
  }

  /// Common widget
  Widget _buildJohnDoe(
    BuildContext context, {
    required String userName,
    required String monthText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: CustomTextStyles.labelLargeSemiBold_1.copyWith(
            color: appTheme.gray800,
          ),
        ),
        Text(
          monthText,
          style: CustomTextStyles.bodySmallGray600.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFive(
    BuildContext context, {
    required String labelText,
  }) {
    return SizedBox(
      width: 30.h,
      child: Row(
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
              labelText,
              style: CustomTextStyles.bodySmallGray80012.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFireflyDaisies(
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
          margin: EdgeInsets.only(bottom: 22.v),
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
                  width: 307.h,
                  child: Text(
                    userDescription,
                    maxLines: null,
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
}
