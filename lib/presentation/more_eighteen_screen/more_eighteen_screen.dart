import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';
import 'package:gaiadhiwise/widgets/custom_search_view.dart';

class MoreEighteenScreen extends StatelessWidget {
  MoreEighteenScreen({Key? key})
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
              _buildStack(context),
              _buildFileName(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
      height: 160.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 35.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup56,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 33.v),
                  CustomAppBar(
                    height: 27.v,
                    leadingWidth: 48.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowDown,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        top: 2.v,
                      ),
                    ),
                    centerTitle: true,
                    title: AppbarSubtitle(
                      text: "Medical Record",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomSearchView(
              width: 345.h,
              controller: searchController,
              hintText: "Search file...",
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFileName(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 34.v,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "File name",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: _buildWeburl(
              context,
              dynamicText1: "Medical.pdf",
              dynamicText2: "2023-10-30",
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: _buildWeburl(
              context,
              dynamicText1: "Medical.pdf",
              dynamicText2: "2023-10-30",
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWeburl(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray30002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    dynamicText1,
                    style: theme.textTheme.labelMedium!.copyWith(
                      color: appTheme.gray800,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Text(
                  dynamicText2,
                  style: CustomTextStyles.bodySmall10.copyWith(
                    color: appTheme.gray60002,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }
}
