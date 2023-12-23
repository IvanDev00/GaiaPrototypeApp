import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/presentation/store_itemdetails_one_page/store_itemdetails_one_page.dart';
import 'package:gaiadhiwise/presentation/store_page/store_page.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_trailing_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';
import 'package:gaiadhiwise/widgets/custom_search_view.dart';

class StoreItemdetailsOneTabContainerScreen extends StatefulWidget {
  const StoreItemdetailsOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  StoreItemdetailsOneTabContainerScreenState createState() =>
      StoreItemdetailsOneTabContainerScreenState();
}

class StoreItemdetailsOneTabContainerScreenState
    extends State<StoreItemdetailsOneTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 37.v),
              _buildArrowDownColumn(context),
              Expanded(
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
                              alignment: Alignment.center,
                              child: Container(
                                height: SizeUtils.height,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: appTheme.gray90082,
                                ),
                              ),
                            ),
                            _buildTabview(context),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 598.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            StoreItemdetailsOnePage(),
                            StoreItemdetailsOnePage(),
                            StoreItemdetailsOnePage(),
                            StoreItemdetailsOnePage(),
                            StorePage(),
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
  Widget _buildArrowDownColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(
          height: 25.v,
          leadingWidth: 48.h,
          leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownGray800,
            margin: EdgeInsets.only(left: 24.h),
          ),
          centerTitle: true,
          title: AppbarSubtitleOne(
            text: "Store",
          ),
          actions: [
            AppbarTrailingImage(
              imagePath: ImageConstant.imgFrameGray80024x24,
              margin: EdgeInsets.symmetric(horizontal: 24.h),
            ),
          ],
        ),
        SizedBox(height: 16.v),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            "Unleash Your Potential",
            style: theme.textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            "Elevate Your Workout Essentials with Us",
            style: CustomTextStyles.bodySmall12_1,
          ),
        ),
        SizedBox(height: 21.v),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomSearchView(
              controller: searchController,
              hintText: "Search item",
              alignment: Alignment.center,
              contentPadding: EdgeInsets.only(
                top: 9.v,
                right: 30.h,
                bottom: 9.v,
              ),
              borderDecoration: SearchViewStyleHelper.outlineGrayTL8,
            ),
          ),
        ),
        SizedBox(height: 22.v),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            "Categories",
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 26.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 228.v),
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.gray800,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: appTheme.teal40001,
          borderRadius: BorderRadius.circular(
            6.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "All",
            ),
          ),
          Tab(
            child: Text(
              "Yoga",
            ),
          ),
          Tab(
            child: Text(
              "Shorts",
            ),
          ),
          Tab(
            child: Text(
              "Shirts",
            ),
          ),
          Tab(
            child: Text(
              "Protein Powder",
            ),
          ),
        ],
      ),
    );
  }
}
