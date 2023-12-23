import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gaiadhiwise/core/app_export.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaiadhiwise/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaiadhiwise/widgets/app_bar/custom_app_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GymaffiliationScreen extends StatelessWidget {
  GymaffiliationScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildArrowDown(context),
              _buildMap(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 37.v),
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
            SizedBox(height: 29.v),
            CustomAppBar(
              height: 27.v,
              leadingWidth: 48.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgArrowDown,
                margin: EdgeInsets.only(
                  left: 24.h,
                  bottom: 2.v,
                ),
              ),
              centerTitle: true,
              title: AppbarSubtitle(
                text: "Gym Affiliation",
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 749.v,
      width: double.maxFinite,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
