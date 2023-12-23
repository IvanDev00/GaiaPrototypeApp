import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';

class StoreMyordersScreen extends StatelessWidget {
  const StoreMyordersScreen({Key? key})
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
            vertical: 10.v,
          ),
          child: Column(
            children: [
              _buildOrderOneColumn(context),
              SizedBox(height: 20.v),
              _buildOrderTwoColumn(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 79.v,
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
        text: "My Orders",
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderOneColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Order #1",
              style: CustomTextStyles.titleSmallSemiBold,
            ),
          ),
          SizedBox(height: 17.v),
          _buildProteinPowderRow(
            context,
            title: "Protein Powder",
            variant: "Variant: Whey Protein",
            quantity: "Qty: 2",
            price: "₱ 800.00",
          ),
          SizedBox(height: 10.v),
          _buildProteinPowderRow(
            context,
            title: "Protein Powder",
            variant: "Variant: Anthony’s Premium Protein",
            quantity: "Qty: 1",
            price: "₱ 400.00",
          ),
          SizedBox(height: 30.v),
          _buildStatusPendingRow(
            context,
            statusPendingText: "Status: Pending",
            priceText: "Total: ₱ 1400.00",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderTwoColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order #2",
            style: CustomTextStyles.titleSmallSemiBold,
          ),
          SizedBox(height: 17.v),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage1559x64,
                    height: 59.v,
                    width: 64.h,
                    radius: BorderRadius.circular(
                      6.h,
                    ),
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Column(
                      children: [
                        Text(
                          "Protein Powder",
                          style: theme.textTheme.titleSmall,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Variant: ",
                                style: CustomTextStyles.bodySmallGray80010,
                              ),
                              TextSpan(
                                text: "Whey Protein",
                                style: theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 11.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Qty: 2",
                            style: CustomTextStyles.bodySmallGray80010_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 41.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "₱ 800.00",
                      style: CustomTextStyles.labelLargeSemiBold_1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              _buildProteinPowderRow(
                context,
                title: "Protein Powder",
                variant: "Variant: Anthony’s Premium Protein",
                quantity: "Qty: 1",
                price: "₱ 400.00",
              ),
              SizedBox(height: 30.v),
              _buildStatusPendingRow(
                context,
                statusPendingText: "Status: Pending",
                priceText: "Total: ₱ 1400.00",
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildProteinPowderRow(
    BuildContext context, {
    required String title,
    required String variant,
    required String quantity,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage1559x64,
          height: 59.v,
          width: 64.h,
          radius: BorderRadius.circular(
            6.h,
          ),
          margin: EdgeInsets.only(bottom: 2.v),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.gray800,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Variant: ",
                        style: CustomTextStyles.bodySmallGray80010,
                      ),
                      TextSpan(
                        text: "Anthony’s Premium Protein",
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Qty: ",
                              style: CustomTextStyles.bodySmallGray80010,
                            ),
                            TextSpan(
                              text: "1",
                              style: CustomTextStyles.labelMediumSemiBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text(
                        price,
                        style: CustomTextStyles.labelLargeSemiBold_1.copyWith(
                          color: appTheme.gray800,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildStatusPendingRow(
    BuildContext context, {
    required String statusPendingText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Status",
                  style: CustomTextStyles.bodyMediumGray800_1,
                ),
                TextSpan(
                  text: ": ",
                  style: theme.textTheme.titleSmall,
                ),
                TextSpan(
                  text: "Pending",
                  style: CustomTextStyles.titleSmallAmberA700,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Total:",
                  style: CustomTextStyles.bodyMediumGray800_1,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "₱ 1400.00",
                  style: CustomTextStyles.titleSmallPrimarySemiBold,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
