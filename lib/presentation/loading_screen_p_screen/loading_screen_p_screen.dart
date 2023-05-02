import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';

class LoadingScreenPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.deepOrange100,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgComponent2,
                height: getSize(
                  129,
                ),
                width: getSize(
                  129,
                ),
                margin: getMargin(
                  top: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
