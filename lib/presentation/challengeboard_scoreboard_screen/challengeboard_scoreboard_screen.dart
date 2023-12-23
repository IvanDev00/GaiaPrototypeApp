import '../challengeboard_scoreboard_screen/widgets/userprofile1_item_widget.dart';import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';class ChallengeboardScoreboardScreen extends StatelessWidget {const ChallengeboardScoreboardScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildTealBackground(context), SizedBox(height: 24.v), _buildChallengeBoardScoreboard(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildTealBackground(BuildContext context) { return SizedBox(height: 122.v, width: double.maxFinite, child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.center, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: appTheme.teal30001, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.customBorderBL16), child: Container(height: 122.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 11.h), decoration: AppDecoration.fillTeal30001.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgGroup5Teal40001, height: 87.v, width: 185.h, alignment: Alignment.topRight), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 133.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("Deadlift 1x3", style: CustomTextStyles.titleMediumWhiteA70018), SizedBox(height: 2.v), Text("Scoreboard", style: theme.textTheme.bodyMedium)])))])))), Align(alignment: Alignment.topLeft, child: Container(height: 111.v, width: 70.h, margin: EdgeInsets.only(left: 7.h), padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 38.v), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgVectorTeal400), fit: BoxFit.cover)), child: CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.topLeft, onTap: () {onTapImgArrowDown(context);})))])); } 
/// Section Widget
Widget _buildChallengeBoardScoreboard(BuildContext context) { return Expanded(child: SizedBox(width: double.maxFinite, child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Men - RX", style: theme.textTheme.labelLarge)), SizedBox(height: 5.v), Expanded(child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: 4, itemBuilder: (context, index) {return Userprofile1ItemWidget();})), SizedBox(height: 12.v), Column(children: [_buildWomenRX(context, textLabel: "Men - Scaled", yorForgerLabel: "Jhonnel Garcia", oneEightyFourLabel: "184"), SizedBox(height: 12.v), _buildWomenRX(context, textLabel: "Women - RX", yorForgerLabel: "Yor Forger", oneEightyFourLabel: "184"), SizedBox(height: 12.v), _buildWomenRX(context, textLabel: "Women - Scaled", yorForgerLabel: "Yor Forger", oneEightyFourLabel: "184")])])))); } 
/// Common widget
Widget _buildWomenRX(BuildContext context, {required String textLabel, required String yorForgerLabel, required String oneEightyFourLabel, }) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(textLabel, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray800)), SizedBox(height: 5.v), Container(padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 7.v), decoration: AppDecoration.outlineGray30002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgFireflyDaisies, height: 20.adaptSize, width: 20.adaptSize, radius: BorderRadius.circular(10.h), margin: EdgeInsets.only(top: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 4.v), child: Text(yorForgerLabel, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.gray800))), Spacer(), Padding(padding: EdgeInsets.only(top: 1.v, bottom: 3.v), child: Text(oneEightyFourLabel, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.gray800)))]))]); } 
/// Navigates to the challengeboardScreen when the action is triggered.
onTapImgArrowDown(BuildContext context) { Navigator.pushNamed(context, AppRoutes.challengeboardScreen); } 
 }
