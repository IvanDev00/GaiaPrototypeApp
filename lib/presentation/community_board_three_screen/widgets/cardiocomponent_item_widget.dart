import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class CardiocomponentItemWidget extends StatelessWidget {
  CardiocomponentItemWidget({
    Key? key,
    this.onTapImgCardioImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgCardioImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 134.v,
      width: 156.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLoganWeaverLg,
            height: 134.v,
            width: 156.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgCardioImage!.call();
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.gradientGrayToOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 92.v),
                  Text(
                    "Cardio",
                    style: CustomTextStyles.labelLargeWhiteA700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
