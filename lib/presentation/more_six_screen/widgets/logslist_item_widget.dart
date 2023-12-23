import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class LogslistItemWidget extends StatelessWidget {
  const LogslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray30002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Added new note",
            style: theme.textTheme.labelMedium,
          ),
          SizedBox(height: 3.v),
          Text(
            "2023-10-30",
            style: CustomTextStyles.bodySmall10,
          ),
        ],
      ),
    );
  }
}
