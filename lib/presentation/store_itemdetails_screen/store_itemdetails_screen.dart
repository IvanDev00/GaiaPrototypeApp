import '../store_itemdetails_screen/widgets/productcard3_item_widget.dart';
import '../store_itemdetails_screen/widgets/productcard4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_icon_button.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';
import 'package:gaiadhiwise/widgets/custom_search_view.dart';

class StoreItemdetailsScreen extends StatelessWidget {
  StoreItemdetailsScreen({Key? key})
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
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildFrameTwentyOne(context),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.fillGray,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 25.v),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.h,
                            vertical: 20.v,
                          ),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL22,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
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
                              SizedBox(height: 18.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage15227x345,
                                height: 227.v,
                                width: 345.h,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                              ),
                              SizedBox(height: 13.v),
                              _buildProteinPowder(context),
                              SizedBox(height: 16.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "About this product",
                                  style: CustomTextStyles.labelLargeSemiBold_1,
                                ),
                              ),
                              SizedBox(height: 7.v),
                              SizedBox(
                                width: 345.h,
                                child: Text(
                                  "Protein powder is a dietary supplement that provides a concentrated source of protein derived from various food sources. It is a popular choice among athletes, fitness enthusiasts, and those looking to supplement their protein intake.",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmallGray80012,
                                ),
                              ),
                              SizedBox(height: 17.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Variant",
                                  style: CustomTextStyles.labelLargeSemiBold_1,
                                ),
                              ),
                              SizedBox(height: 8.v),
                              _buildAll(context),
                              SizedBox(height: 10.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  margin: EdgeInsets.only(right: 229.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 18.h,
                                    vertical: 3.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray300.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.v),
                                      Text(
                                        "Whey Protein",
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              _buildAddToCart(context),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildStoreItemDetails(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwentyOne(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 228.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillTeal40001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Text(
                "All",
                style: CustomTextStyles.labelLargeWhiteA700,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.fillGray300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Text(
                    "Yoga",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillGray300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Text(
                "Shorts",
                style: theme.textTheme.labelLarge,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillGray300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  Text(
                    "Shirts",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(vertical: 3.v),
              decoration: AppDecoration.fillGray300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  Text(
                    "Protein Powder",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProteinPowder(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Protein Powder",
          style: CustomTextStyles.titleMediumPrimary18,
        ),
        Text(
          "₱ 400.00",
          style: CustomTextStyles.titleMedium18,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAll(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 25.h),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.outlinePrimary2.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  Text(
                    "Anthony’s Premium Protein",
                    style: CustomTextStyles.labelLargePrimary_1,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 14.h),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillGray300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  Text(
                    "KOS Protein",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameGray80030x30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
              bottom: 7.v,
            ),
            child: Text(
              "1",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame30x30,
              ),
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            width: 137.h,
            text: "Add to Cart",
            buttonStyle: CustomButtonStyles.outlinePrimaryTL19,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStoreItemDetails(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          top: 37.v,
          right: 23.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDownGray800,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Text(
                  "Store",
                  style: theme.textTheme.titleMedium,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameGray80024x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
            SizedBox(height: 16.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Unleash Your Potential",
                style: theme.textTheme.titleMedium,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Elevate Your Workout Essentials with Us",
                style: CustomTextStyles.bodySmall12_1,
              ),
            ),
            SizedBox(height: 21.v),
            CustomSearchView(
              controller: searchController,
              hintText: "Search item",
              contentPadding: EdgeInsets.only(
                top: 9.v,
                right: 30.h,
                bottom: 9.v,
              ),
              borderDecoration: SearchViewStyleHelper.outlineGrayTL8,
            ),
            SizedBox(height: 22.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Categories",
                style: theme.textTheme.labelLarge,
              ),
            ),
            SizedBox(height: 57.v),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 125.v,
                crossAxisCount: 3,
                mainAxisSpacing: 0.h,
                crossAxisSpacing: 0.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Productcard3ItemWidget();
              },
            ),
            SizedBox(height: 16.v),
            SizedBox(
              height: 124.v,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 14.h,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Productcard4ItemWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
