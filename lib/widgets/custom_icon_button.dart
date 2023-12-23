import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(16.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray800.withOpacity(0.4),
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillPrimaryTL20 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray800,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimaryTL10 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(10.h),
      );
}
