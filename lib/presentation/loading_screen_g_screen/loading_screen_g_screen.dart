import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';

class LoadingScreenGScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.teal100,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgComponent1,
                height: getSize(
                  129,
                ),
                width: getSize(
                  129,
                ),
                margin: getMargin(
                  bottom: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
