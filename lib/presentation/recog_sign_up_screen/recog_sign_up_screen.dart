import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';

class RecogSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(top: 25, bottom: 25),
                          decoration: AppDecoration.fillDeeporange100,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    decoration:
                                        AppDecoration.txtOutlineDeeporange200,
                                    child: Text("FACE IDENTIFICATION",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBoogalooRegular47)),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: getHorizontalSize(195),
                                        margin: getMargin(top: 98),
                                        padding: getPadding(
                                            left: 12,
                                            top: 3,
                                            right: 12,
                                            bottom: 3),
                                        decoration: AppDecoration.txtFillTeal700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder9),
                                        child: Text("SIGN UP",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtBoogalooRegular48))),
                                Container(
                                    height: getVerticalSize(254),
                                    width: getHorizontalSize(251),
                                    margin: getMargin(top: 46),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getSize(249),
                                                  width: getSize(249),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          ColorConstant.teal100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  124))))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getSize(248),
                                                  width: getSize(248),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgFaceb,
                                                            height:
                                                                getSize(236),
                                                            width: getSize(236),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgFacew,
                                                            height:
                                                                getSize(248),
                                                            width: getSize(248),
                                                            alignment: Alignment
                                                                .center)
                                                      ])))
                                        ])),
                                GestureDetector(
                                    onTap: () {
                                      onTapSignupbutton(context);
                                    },
                                    child: Container(
                                        height: getVerticalSize(33),
                                        width: getHorizontalSize(140),
                                        margin: getMargin(top: 31, bottom: 204),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
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
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 10),
                                                      child: Text("SIGN UP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSourceCodeProRomanMedium25
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          1.75)))))
                                            ])))
                              ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                          onTap: () {
                            onTapLogin(context);
                          },
                          child: Container(
                              height: getVerticalSize(72),
                              width: getHorizontalSize(222),
                              margin: getMargin(top: 105),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgLoginbg69x195,
                                        height: getVerticalSize(69),
                                        width: getHorizontalSize(195),
                                        alignment: Alignment.topLeft),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: getPadding(left: 37),
                                            child: Text("LOGIN",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtBoogalooRegular48))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            margin: getMargin(top: 3),
                                            decoration: AppDecoration
                                                .txtOutlineBlack9003f,
                                            child: Text(
                                                "Already have an account?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSourceSansProSemiBoldItalic15)))
                                  ])))),
                  CustomImageView(
                      imagePath: ImageConstant.img7f7b4646b8824,
                      height: getVerticalSize(471),
                      width: getHorizontalSize(390),
                      alignment: Alignment.bottomCenter)
                ]))));
  }

  onTapSignupbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recogSignUpOneScreen);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
