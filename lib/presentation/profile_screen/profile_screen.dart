import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';
import 'package:travelouge/widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: size.height,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 28,
                                                    top: 15,
                                                    right: 28,
                                                    bottom: 15),
                                                decoration:
                                                    AppDecoration.fillTeal100,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgMaskgroup,
                                                          height:
                                                              getVerticalSize(
                                                                  83),
                                                          width:
                                                              getHorizontalSize(
                                                                  333)),
                                                      Container(
                                                          height: getSize(196),
                                                          width: getSize(196),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getSize(
                                                                            176),
                                                                        width: getSize(
                                                                            176),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray200,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(88))))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgProfile1,
                                                                    height:
                                                                        getSize(
                                                                            196),
                                                                    width:
                                                                        getSize(
                                                                            196),
                                                                    alignment:
                                                                        Alignment
                                                                            .center)
                                                              ])),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 32,
                                                                      top: 7),
                                                              child: Text(
                                                                  "First Name",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtSourceSansProSemiBold23))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  284),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .deepOrange100,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          9)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .teal700,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 32,
                                                                      top: 18),
                                                              child: Text(
                                                                  "Last Name",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtSourceSansProSemiBold23))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  35),
                                                          width:
                                                              getHorizontalSize(
                                                                  284),
                                                          margin: getMargin(
                                                              bottom: 388),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .deepOrange100,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          9)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .teal700,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(341),
                                                width: double.maxFinite,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .img418d7e9d677b4334x390,
                                                          height:
                                                              getVerticalSize(
                                                                  334),
                                                          width:
                                                              getHorizontalSize(
                                                                  390),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 55,
                                                                      top: 29,
                                                                      right:
                                                                          51),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                4),
                                                                        child: Text(
                                                                            "Email",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtSourceSansProSemiBold23)),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            34),
                                                                        width: getHorizontalSize(
                                                                            284),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.deepOrange100,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(9)),
                                                                            border: Border.all(color: ColorConstant.teal700, width: getHorizontalSize(1)))),
                                                                    CustomButton(
                                                                        height: getVerticalSize(
                                                                            29),
                                                                        width: getHorizontalSize(
                                                                            127),
                                                                        text:
                                                                            "LOGOUT",
                                                                        margin: getMargin(
                                                                            top:
                                                                                30),
                                                                        fontStyle:
                                                                            ButtonFontStyle
                                                                                .SourceCodeProRomanSemiBold22,
                                                                        onTap:
                                                                            () {
                                                                          onTapLogout(
                                                                              context);
                                                                        },
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ]))),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  36),
                                                          width:
                                                              double.maxFinite,
                                                          text: "EDIT PROFILE ",
                                                          margin: getMargin(
                                                              bottom: 7),
                                                          variant: ButtonVariant
                                                              .FillTeal900,
                                                          shape: ButtonShape
                                                              .Square,
                                                          padding: ButtonPadding
                                                              .PaddingAll5,
                                                          fontStyle: ButtonFontStyle
                                                              .SourceCodeProRomanSemiBold20,
                                                          alignment: Alignment
                                                              .bottomCenter),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrow63x62,
                                                          height:
                                                              getVerticalSize(
                                                                  63),
                                                          width:
                                                              getHorizontalSize(
                                                                  62),
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin: getMargin(
                                                              bottom: 43),
                                                          onTap: () {
                                                            onTapImgArrow(
                                                                context);
                                                          })
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 56,
                                                    right: 50,
                                                    bottom: 324),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 4),
                                                          child: Text(
                                                              "Username",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSourceSansProSemiBold23)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  284),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .deepOrange100,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          9)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .teal700,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1))))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapLogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapImgArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }
}
