import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  Productcard1ItemWidget({
    Key? key,
    this.onTapProductCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapProductCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductCard!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.fillGray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage15,
              height: 78.v,
              width: 94.h,
              radius: BorderRadius.circular(
                4.h,
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "Protein Powder",
                style: CustomTextStyles.labelSmallSemiBold,
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "₱ 400.00",
                style: theme.textTheme.labelSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
