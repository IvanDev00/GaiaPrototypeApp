import '../store_itemdetails_one_page/widgets/categorieschipview_item_widget.dart';
import '../store_itemdetails_one_page/widgets/productcard2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_icon_button.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class StoreItemdetailsOnePage extends StatefulWidget {
  const StoreItemdetailsOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  StoreItemdetailsOnePageState createState() => StoreItemdetailsOnePageState();
}

class StoreItemdetailsOnePageState extends State<StoreItemdetailsOnePage>
    with AutomaticKeepAliveClientMixin<StoreItemdetailsOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 26.v),
                Column(
                  children: [
                    _buildProductCard(context),
                    SizedBox(height: 178.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 20.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.customBorderTL22,
                      ),
                      child: Column(
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
                          SizedBox(height: 14.v),
                          _buildProteinPowderRow(context),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "About this product",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeSemiBold_1,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          SizedBox(
                            width: 345.h,
                            child: Text(
                              "Protein powder is a dietary supplement that provides a concentrated source of protein derived from various food sources. It is a popular choice among athletes, fitness enthusiasts, and those looking to supplement their protein intake.",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray80012,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Variant",
                              style: CustomTextStyles.labelLargeSemiBold_1,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          _buildCategoriesChipView(context),
                          SizedBox(height: 196.v),
                          _buildAddToCartRow(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 125.v,
          crossAxisCount: 3,
          mainAxisSpacing: 14.h,
          crossAxisSpacing: 14.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Productcard2ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildProteinPowderRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 7.v,
          ),
          child: Text(
            "Protein Powder",
            style: CustomTextStyles.titleMediumPrimary18,
          ),
        ),
        Text(
          "₱ 400.00",
          style: CustomTextStyles.titleMedium18,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCategoriesChipView(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        runSpacing: 14.v,
        spacing: 14.h,
        children:
            List<Widget>.generate(3, (index) => CategorieschipviewItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartRow(BuildContext context) {
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
              bottom: 8.v,
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
}
