import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  const GridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgLoganWeaverLg80x140,
            height: 80.v,
            width: 140.h,
            radius: BorderRadius.circular(
              6.h,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            "Heavens Mind",
            style: CustomTextStyles.labelMediumPrimarySemiBold,
          ),
          SizedBox(
            width: 111.h,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 5.v),
          Text(
            "By: Coach Jhones",
            style: theme.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
