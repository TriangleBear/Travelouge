import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      default:
        return getPadding(
          all: 2,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineTeal700:
        return ColorConstant.deepOrange100;
      case ButtonVariant.FillTeal900:
        return ColorConstant.teal900;
      default:
        return ColorConstant.teal700;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineTeal700:
        return BorderSide(
          color: ColorConstant.teal700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillTeal700:
      case ButtonVariant.FillTeal900:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.SourceCodeProRomanMedium20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Source Code Pro',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.SourceCodeProRomanSemiBold22:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Source Code Pro',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.SourceCodeProRomanSemiBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Source Code Pro',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.teal900,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder16,
  RoundedBorder13,
}

enum ButtonPadding {
  PaddingAll2,
  PaddingAll5,
}

enum ButtonVariant {
  OutlineTeal700,
  FillTeal700,
  FillTeal900,
}

enum ButtonFontStyle {
  SourceSansProSemiBold22,
  SourceCodeProRomanMedium20,
  SourceCodeProRomanSemiBold22,
  SourceCodeProRomanSemiBold20,
}
