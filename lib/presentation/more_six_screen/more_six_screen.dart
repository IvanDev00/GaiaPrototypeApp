import '../more_six_screen/widgets/logslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';
import 'package:gaiadhiwise/widgets/custom_search_view.dart';

class MoreSixScreen extends StatelessWidget {
  MoreSixScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildArrowDownStack(context),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 36.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Logs",
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 3.v),
                        _buildLogsList(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDownStack(BuildContext context) {
    return SizedBox(
      height: 160.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 35.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup56,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 33.v),
                  CustomAppBar(
                    height: 27.v,
                    leadingWidth: 48.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowDown,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        top: 2.v,
                      ),
                    ),
                    centerTitle: true,
                    title: AppbarSubtitle(
                      text: "Daily Activity Log",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomSearchView(
              width: 345.h,
              controller: searchController,
              hintText: "Search log...",
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogsList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return LogslistItemWidget();
          },
        ),
      ),
    );
  }
}
