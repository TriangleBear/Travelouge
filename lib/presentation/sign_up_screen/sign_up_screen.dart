import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';
import 'package:travelouge/widgets/custom_button.dart';

class SignUpScreen extends StatelessWidget {
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
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: getPadding(
                                                    top: 15, bottom: 15),
                                                decoration: AppDecoration
                                                    .fillDeeporange100,
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
                                                      Align(
                                                          alignment:
                                                              Alignment
                                                                  .centerRight,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      195),
                                                              margin:
                                                                  getMargin(
                                                                      top: 82),
                                                              padding:
                                                                  getPadding(
                                                                      left: 12,
                                                                      top: 3,
                                                                      right: 12,
                                                                      bottom:
                                                                          3),
                                                              decoration: AppDecoration
                                                                  .txtFillTeal700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder9),
                                                              child: Text(
                                                                  "SIGN UP",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtBoogalooRegular48))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  61),
                                                          width:
                                                              getHorizontalSize(
                                                                  284),
                                                          margin: getMargin(
                                                              top: 16),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            34),
                                                                        width: getHorizontalSize(
                                                                            284),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.teal300,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(9))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                4),
                                                                        child: Text(
                                                                            "First Name",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtSourceSansProSemiBold23))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(left: 4),
                                                                              child: Text("First Name", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProSemiBold23)),
                                                                          Container(
                                                                              height: getVerticalSize(34),
                                                                              width: getHorizontalSize(284),
                                                                              decoration: BoxDecoration(color: ColorConstant.teal300, borderRadius: BorderRadius.circular(getHorizontalSize(9))))
                                                                        ]))
                                                              ])),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 60,
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
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .teal300,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          9)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 60,
                                                                      top: 20),
                                                              child: Text(
                                                                  "Username",
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
                                                              color:
                                                                  ColorConstant
                                                                      .teal300,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          9)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 59,
                                                                  top: 19),
                                                              child: Text(
                                                                  "Email",
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
                                                              color:
                                                                  ColorConstant
                                                                      .teal300,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          9)))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  59),
                                                          width:
                                                              getHorizontalSize(
                                                                  293),
                                                          margin: getMargin(
                                                              top: 19),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            35),
                                                                        width: getHorizontalSize(
                                                                            284),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.teal300,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(9))))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgBlueeyes1,
                                                                    height:
                                                                        getVerticalSize(
                                                                            33),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            57),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                4),
                                                                        child: Text(
                                                                            "Password",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtSourceSansProSemiBold23)))
                                                              ])),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  30),
                                                          width:
                                                              getHorizontalSize(
                                                                  132),
                                                          text: "SIGN UP",
                                                          margin: getMargin(
                                                              top: 25,
                                                              right: 50,
                                                              bottom: 132),
                                                          fontStyle: ButtonFontStyle
                                                              .SourceCodeProRomanMedium20,
                                                          onTap: () {
                                                            onTapSignup(
                                                                context);
                                                          },
                                                          alignment: Alignment
                                                              .centerRight)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding: getPadding(bottom: 24),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  54),
                                                          width:
                                                              getHorizontalSize(
                                                                  220),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 61, right: 55),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Padding(
                                                                              padding: getPadding(right: 36),
                                                                              child: Text("Or", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBoogalooRegular25)),
                                                                          Text(
                                                                              "Signup using ",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtBoogalooRegular23)
                                                                        ]))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgLine,
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            220),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            16))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Card(
                                                                    clipBehavior:
                                                                        Clip
                                                                            .antiAlias,
                                                                    elevation:
                                                                        0,
                                                                    margin: EdgeInsets
                                                                        .all(0),
                                                                    color: ColorConstant
                                                                        .blueGray100,
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadiusStyle.circleBorder22),
                                                                    child: Container(
                                                                        height: getSize(40),
                                                                        width: getSize(40),
                                                                        decoration: AppDecoration.fillBluegray100.copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgGoogle,
                                                                              height: getSize(40),
                                                                              width: getSize(40),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgFb,
                                                                    height:
                                                                        getSize(
                                                                            40),
                                                                    width:
                                                                        getSize(
                                                                            40),
                                                                    margin: getMargin(
                                                                        left:
                                                                            3)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRecog,
                                                                    height:
                                                                        getSize(
                                                                            40),
                                                                    width:
                                                                        getSize(
                                                                            40),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            17)),
                                                                    margin: getMargin(
                                                                        left:
                                                                            3),
                                                                    onTap: () {
                                                                      onTapImgRecog(
                                                                          context);
                                                                    })
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapLogin(context);
                                                },
                                                child: Container(
                                                    height: getVerticalSize(72),
                                                    width:
                                                        getHorizontalSize(222),
                                                    margin: getMargin(top: 105),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgLoginbg,
                                                              height:
                                                                  getVerticalSize(
                                                                      69),
                                                              width:
                                                                  getHorizontalSize(
                                                                      195),
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 37),
                                                                  child: Text(
                                                                      "LOGIN",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtBoogalooRegular48))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Container(
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              3),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .txtOutlineBlack9003f,
                                                                  child: Text(
                                                                      "Already have an account?",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSourceSansProSemiBoldItalic15)))
                                                        ])))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgF66117daaaf14,
                                            height: getVerticalSize(199),
                                            width: getHorizontalSize(187),
                                            alignment: Alignment.bottomLeft)
                                      ]))))
                    ]))));
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loadingScreenPScreen);
  }

  onTapImgRecog(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recogSignUpScreen);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
