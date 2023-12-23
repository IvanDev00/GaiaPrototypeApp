import '../store_page/widgets/productcard1_item_widget.dart';import '../store_page/widgets/productcard_item_widget.dart';import 'package:flutter/material.dart';import 'package:gaiadhiwise/core/app_export.dart';import 'package:gaiadhiwise/widgets/custom_outlined_button.dart';class StorePage extends StatefulWidget {const StorePage({Key? key}) : super(key: key);

@override StorePageState createState() =>  StorePageState();

 }
class StorePageState extends State<StorePage> with  AutomaticKeepAliveClientMixin<StorePage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildViewOrders(context)])))); } 
/// Section Widget
Widget _buildViewOrders(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Products", style: theme.textTheme.labelLarge), SizedBox(height: 7.v), GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 125.v, crossAxisCount: 3, mainAxisSpacing: 14.h, crossAxisSpacing: 14.h), physics: NeverScrollableScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return ProductcardItemWidget(onTapProductCard: () {onTapProductCard(context);});}), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 240.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 125.v, crossAxisCount: 1, mainAxisSpacing: 1.h, crossAxisSpacing: 1.h), physics: NeverScrollableScrollPhysics(), itemCount: 1, itemBuilder: (context, index) {return Productcard1ItemWidget(onTapProductCard: () {onTapProductCard(context);});})), SizedBox(height: 85.v), CustomOutlinedButton(text: "View Orders")])); } 
/// Navigates to the storeItemdetailsOneTabContainerScreen when the action is triggered.
onTapProductCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.storeItemdetailsOneTabContainerScreen); } 
 }
