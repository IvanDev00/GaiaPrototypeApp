import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class Productcardlist1ItemWidget extends StatelessWidget {
  const Productcardlist1ItemWidget({Key? key})
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
          margin: EdgeInsets.only(bottom: 1.v),
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
                SizedBox(
                  height: 18.v,
                  width: 131.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
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
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 6.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Qty: ",
                              style: CustomTextStyles.bodySmallGray80012_1,
                            ),
                            TextSpan(
                              text: "2",
                              style: CustomTextStyles.labelLargeSemiBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Text(
                      "₱ 800.00",
                      style: CustomTextStyles.titleMediumPrimary_1,
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
