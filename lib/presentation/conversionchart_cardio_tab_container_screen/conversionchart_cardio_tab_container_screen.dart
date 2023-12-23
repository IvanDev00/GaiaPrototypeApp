import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/presentation/conversionchart_cardio_page/conversionchart_cardio_page.dart';
import 'package:gaiadhiwise/presentation/conversionchart_lowequipment_page/conversionchart_lowequipment_page.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';

class ConversionchartCardioTabContainerScreen extends StatefulWidget {
  const ConversionchartCardioTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ConversionchartCardioTabContainerScreenState createState() =>
      ConversionchartCardioTabContainerScreenState();
}

class ConversionchartCardioTabContainerScreenState
    extends State<ConversionchartCardioTabContainerScreen>
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
                    ConversionchartCardioPage(),
                    ConversionchartCardioPage(),
                    ConversionchartLowequipmentPage(),
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
        text: "Conversion Chart",
      ),
      styleType: Style.bgStyle_9,
    );
  }
}
