import '../store_mycart_screen/widgets/productcardlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';
import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';

class StoreMycartScreen extends StatelessWidget {
  const StoreMycartScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 23.v),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildProductCardList(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildCheckoutRow(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray800,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 14.v,
          bottom: 17.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "My Cart",
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 32.h,
        ),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 23.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return ProductcardlistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckoutRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 40.h,
        right: 40.h,
        bottom: 31.v,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Subtotal",
                style: theme.textTheme.labelLarge,
              ),
              Text(
                "₱ 1200.00",
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ],
          ),
          CustomOutlinedButton(
            width: 144.h,
            text: "Checkout(2)",
            buttonStyle: CustomButtonStyles.outlinePrimaryTL19,
          ),
        ],
      ),
    );
  }
}
