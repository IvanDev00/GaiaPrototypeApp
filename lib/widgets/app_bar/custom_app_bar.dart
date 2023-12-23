import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 98.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 98.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgStyle_1:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_2:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_12:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_11:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_10:
        return Container(
          height: 60.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: 122.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.teal30001,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16.h),
            ),
          ),
        );
      case Style.bgStyle_9:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_7:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_8:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_5:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_6:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_3:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_4:
        return Container(
          height: 98.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgStyle_1,
  bgStyle_2,
  bgStyle_12,
  bgStyle,
  bgStyle_11,
  bgStyle_10,
  bgFill,
  bgStyle_9,
  bgStyle_7,
  bgStyle_8,
  bgStyle_5,
  bgStyle_6,
  bgStyle_3,
  bgStyle_4,
}
