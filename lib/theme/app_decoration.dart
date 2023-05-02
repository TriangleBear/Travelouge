import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtOutlineDeeporange200 => BoxDecoration();
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
  static BoxDecoration get outlineTeal3001 => BoxDecoration(
        color: ColorConstant.blueGray200,
        border: Border.all(
          color: ColorConstant.teal300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.blueGray100,
      );
  static BoxDecoration get fillTeal900 => BoxDecoration(
        color: ColorConstant.teal900,
      );
  static BoxDecoration get fillTeal700 => BoxDecoration(
        color: ColorConstant.teal700,
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
  static BoxDecoration get txtOutlineWhiteA7007f => BoxDecoration();
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtOutlineTeal7001 => BoxDecoration(
        color: ColorConstant.deepOrange100,
        border: Border.all(
          color: ColorConstant.teal700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtOutlineWhiteA7003f => BoxDecoration();
  static BoxDecoration get fillDeeporange100 => BoxDecoration(
        color: ColorConstant.deepOrange100,
      );
  static BoxDecoration get txtOutlineTeal700 => BoxDecoration();
  static BoxDecoration get txtFillTeal700 => BoxDecoration(
        color: ColorConstant.teal700,
      );
  static BoxDecoration get txtOutlineTeal900 => BoxDecoration();
  static BoxDecoration get txtFillTeal900 => BoxDecoration(
        color: ColorConstant.teal900,
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
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration();
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

  static BorderRadius circleBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22,
    ),
  );

  static BorderRadius txtCircleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17,
    ),
  );

  static BorderRadius txtRoundedBorder9 = BorderRadius.circular(
    getHorizontalSize(
      9,
    ),
  );

  static BorderRadius roundedBorder9 = BorderRadius.circular(
    getHorizontalSize(
      9,
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
