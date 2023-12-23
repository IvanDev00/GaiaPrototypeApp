import 'package:flutter/material.dart';
import 'package:gaiadhiwise/core/app_export.dart';

// ignore: must_be_immutable
class PedometercomponentItemWidget extends StatelessWidget {
  const PedometercomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 10.v),
            Text(
              "Pedometer",
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallPrimary,
            ),
            SizedBox(height: 10.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "2000",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 28.v),
                      Text(
                        "1600",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 28.v),
                      Text(
                        "1200",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 28.v),
                      Text(
                        "800",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 28.v),
                      Text(
                        "400",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 28.v),
                      Text(
                        "0",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 212.v,
                  width: 321.h,
                  margin: EdgeInsets.only(left: 3.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 211.v,
                          width: 321.h,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup54,
                        height: 199.v,
                        width: 305.h,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 34.h,
                  right: 6.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Sun",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 16,
                    ),
                    Text(
                      "Mon",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 16,
                    ),
                    Text(
                      "Tue",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 16,
                    ),
                    Text(
                      "Wed",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 16,
                    ),
                    Text(
                      "Thurs",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 16,
                    ),
                    Text(
                      "Fri",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 16,
                    ),
                    Text(
                      "Sat",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
