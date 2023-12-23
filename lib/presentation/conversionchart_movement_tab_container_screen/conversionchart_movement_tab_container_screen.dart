import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/presentation/conversionchart_movement_page/conversionchart_movement_page.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_trailing_image_one.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';

class ConversionchartMovementTabContainerScreen extends StatefulWidget {
  const ConversionchartMovementTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ConversionchartMovementTabContainerScreenState createState() =>
      ConversionchartMovementTabContainerScreenState();
}

class ConversionchartMovementTabContainerScreenState
    extends State<ConversionchartMovementTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 22.v),
              Container(
                height: 30.v,
                width: 289.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: 12.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: theme.colorScheme.primary,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 12.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  indicator: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Cardio",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Movement",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Low Equipment",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 702.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    ConversionchartMovementPage(),
                    ConversionchartMovementPage(),
                    ConversionchartMovementPage(),
                  ],
                ),
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
      leading: Container(
        height: 75.v,
        width: 41.h,
        margin: EdgeInsets.only(
          left: 7.h,
          bottom: 23.v,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorTeal400128x70,
              height: 75.v,
              width: 41.h,
              alignment: Alignment.topLeft,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(
                left: 17.h,
                top: 38.v,
                bottom: 13.v,
              ),
            ),
          ],
        ),
      ),
      title: AppbarSubtitle(
        text: "Conversion Chart",
        margin: EdgeInsets.only(
          top: 35.v,
          right: 103.h,
          bottom: 24.v,
        ),
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgGroup5Teal40001,
          margin: EdgeInsets.only(left: 80.h),
        ),
      ],
    );
  }
}
