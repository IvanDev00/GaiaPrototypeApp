import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class CategorieschipviewItemWidget extends StatelessWidget {
  const CategorieschipviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 4.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Anthony’s Premium Protein",
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray300,
      selectedColor: appTheme.teal200,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          6.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
