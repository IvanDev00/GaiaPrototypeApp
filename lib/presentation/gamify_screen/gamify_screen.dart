import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';

class GamifyScreen extends StatelessWidget {
  const GamifyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(
                flex: 40,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUnderConstructionCuate,
                height: 212.v,
                width: 318.h,
              ),
              Spacer(
                flex: 59,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 38.v,
          bottom: 36.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Gamify",
      ),
      styleType: Style.bgStyle_12,
    );
  }
}
