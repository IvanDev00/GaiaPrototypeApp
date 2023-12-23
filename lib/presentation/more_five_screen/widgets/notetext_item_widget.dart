import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class NotetextItemWidget extends StatelessWidget {
  NotetextItemWidget({
    Key? key,
    this.onTapNoteText,
  }) : super(
          key: key,
        );

  VoidCallback? onTapNoteText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapNoteText!.call();
      },
      child: Container(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            Text(
              "Note for physical therapist",
              style: theme.textTheme.labelMedium,
            ),
            SizedBox(height: 2.v),
            Text(
              "2023-10-30",
              style: CustomTextStyles.bodySmall10,
            ),
          ],
        ),
      ),
    );
  }
}
