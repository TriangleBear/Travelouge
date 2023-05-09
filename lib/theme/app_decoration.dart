import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineTeal700 => BoxDecoration(
        color: ColorConstant.blueGray200,
        border: Border.all(
          color: ColorConstant.teal700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillTeal100 => BoxDecoration(
        color: ColorConstant.teal100,
      );
  static BoxDecoration get fillDeeporange100 => BoxDecoration(
        color: ColorConstant.deepOrange100,
      );
  static BoxDecoration get outlineTeal7001 => BoxDecoration(
        color: ColorConstant.deepOrange100,
        border: Border.all(
          color: ColorConstant.teal700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get outlineSliderTeal => BoxDecoration(
    color: ColorConstant.deepOrange100,
  );
  static BoxDecoration get outlineTeal300 => BoxDecoration(
        color: ColorConstant.deepOrange100,
        border: Border.all(
          color: ColorConstant.teal300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillTeal1009e => BoxDecoration(
        color: ColorConstant.teal1009e,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder27 = BorderRadius.circular(
    getHorizontalSize(
      27,
    ),
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17,
    ),
  );

  static BorderRadius roundedBorder124 = BorderRadius.circular(
    getHorizontalSize(
      124,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
