import '../community_board_four_screen/widgets/grid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';

class CommunityBoardFourScreen extends StatelessWidget {
  const CommunityBoardFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Available videos",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 14.v),
              _buildGrid(context),
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
        text: "Mindfulness Minute",
      ),
      styleType: Style.bgStyle_3,
    );
  }

  /// Section Widget
  Widget _buildGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 163.v,
        crossAxisCount: 2,
        mainAxisSpacing: 25.h,
        crossAxisSpacing: 25.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return GridItemWidget();
      },
    );
  }
}
