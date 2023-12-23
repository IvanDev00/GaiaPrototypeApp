import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardlistItemWidget extends StatelessWidget {
  const ProductcardlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage1577x76,
          height: 77.v,
          width: 76.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Protein Powder",
                  style: CustomTextStyles.titleMediumMedium_1,
                ),
                SizedBox(height: 2.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Variant: ",
                        style: CustomTextStyles.bodySmallGray80012_1,
                      ),
                      TextSpan(
                        text: "Whey Protein",
                        style: CustomTextStyles.labelLargeSemiBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 65.h,
                      margin: EdgeInsets.only(top: 1.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.outlineGray,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrameGray80030x30,
                            ),
                          ),
                          Text(
                            "2",
                            style: CustomTextStyles.labelLargeSemiBold_1,
                          ),
                          CustomIconButton(
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL10,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrame30x30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "₱ 800.00",
                      style: CustomTextStyles.titleSmallPrimary,
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
}
