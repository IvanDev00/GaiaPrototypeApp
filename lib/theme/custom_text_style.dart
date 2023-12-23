import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumGray800_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall12_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 12.fSize,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallGray80010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 10.fSize,
      );
  static get bodySmallGray80010_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 10.fSize,
      );
  static get bodySmallGray80012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 12.fSize,
      );
  static get bodySmallGray80012_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 12.fSize,
      );
  static get bodySmallGray800_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallGreen600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green600,
        fontSize: 10.fSize,
      );
  static get bodySmallGreen800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green800,
        fontSize: 10.fSize,
      );
  static get bodySmallPink600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.pink600,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallRed700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red700,
      );
  static get bodySmallTeal500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal500,
      );
  static get bodySmallTeal50010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal500,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get bodySmallWhiteA70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeWhiteA700SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray60002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray60002,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumPrimarySemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold_1 => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWhiteA700_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelSmallBold => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelSmallErrorContainer => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallRed700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallSemiBold => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelSmallTeal500 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.teal500,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallWhiteA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelSmallWhiteA700_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Poppins text style
  static get poppinsWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA70018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallAmberA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amberA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray60002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
