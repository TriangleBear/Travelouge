import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';

class RecogLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(top: 23, bottom: 23),
                          decoration: AppDecoration.fillTeal100,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    margin: getMargin(right: 4),
                                    decoration: AppDecoration.txtOutlineTeal700,
                                    child: Text("FACE IDENTIFICATION",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBoogalooRegular47)),
                                Spacer(),
                                GestureDetector(
                                    onTap: () {
                                      onTapSignup(context);
                                    },
                                    child: Container(
                                        height: getVerticalSize(74),
                                        width: getHorizontalSize(195),
                                        margin: getMargin(bottom: 566),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 5,
                                                          right: 1,
                                                          bottom: 5),
                                                      decoration: AppDecoration
                                                          .fillTeal700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder9),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        192),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            27),
                                                                decoration:
                                                                    AppDecoration
                                                                        .txtOutlineBlack9003f,
                                                                child: Text(
                                                                    "Don’t have an account yet?",
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style: AppStyle
                                                                        .txtSourceSansProSemiBoldItalic15))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 12),
                                                      child: Text("SIGN UP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtBoogalooRegular48)))
                                            ])))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: getVerticalSize(372),
                          width: double.maxFinite,
                          margin: getMargin(bottom: 10),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgF1714b44d44c4,
                                height: getVerticalSize(372),
                                width: getHorizontalSize(390),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapLoginbutton(context);
                                    },
                                    child: Container(
                                        height: getVerticalSize(32),
                                        width: getHorizontalSize(140),
                                        margin: getMargin(top: 117),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(32),
                                                      width: getHorizontalSize(
                                                          140),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .teal30002,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      13)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: ColorConstant
                                                                    .lightBlue900,
                                                                spreadRadius:
                                                                    getHorizontalSize(
                                                                        2),
                                                                blurRadius:
                                                                    getHorizontalSize(
                                                                        2),
                                                                offset: Offset(
                                                                    3, 5))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("LOGIN",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSourceCodeProRomanMedium25
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      5.0))))
                                            ]))))
                          ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: getSize(249),
                          width: getSize(249),
                          decoration: BoxDecoration(
                              color: ColorConstant.deepOrange100,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(124))))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: getSize(248),
                          width: getSize(248),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFaceb,
                                height: getSize(236),
                                width: getSize(236),
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant.imgFacew,
                                height: getSize(248),
                                width: getSize(248),
                                alignment: Alignment.center)
                          ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: getHorizontalSize(195),
                          margin: getMargin(top: 105),
                          padding: getPadding(
                              left: 30, top: 4, right: 37, bottom: 4),
                          decoration: AppDecoration.txtFillTeal900.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.txtRoundedBorder9),
                          child: Text("LOGIN",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBoogalooRegular48)))
                ]))));
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapLoginbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loadingScreenGScreen);
  }
}
