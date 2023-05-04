import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepOrange100,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgTravelogue,
                          height: getVerticalSize(62),
                          width: getHorizontalSize(324),
                          margin: getMargin(top: 30)),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogin69x195,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(top: 18),
                          onTap: () {
                            onTapImgLogin(context);
                          }),
                      CustomImageView(
                          imagePath: ImageConstant.imgSignup69x195,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerRight,
                          margin: getMargin(top: 6)),
                      Container(
                          height: getVerticalSize(61),
                          width: getHorizontalSize(284),
                          margin: getMargin(top: 25),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("First Name",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSourceSansProSemiBold23))
                          ])),
                      Container(
                          height: getVerticalSize(58),
                          width: getHorizontalSize(284),
                          margin: getMargin(top: 16),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("Last Name",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSourceSansProSemiBold23))
                          ])),
                      Container(
                          height: getVerticalSize(58),
                          width: getHorizontalSize(284),
                          margin: getMargin(top: 16),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("Username",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSourceSansProSemiBold23))
                          ])),
                      Container(
                          height: getVerticalSize(61),
                          width: getHorizontalSize(284),
                          margin: getMargin(top: 13),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("Email",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSourceSansProSemiBold23))
                          ])),
                      Container(
                          height: getVerticalSize(59),
                          width: getHorizontalSize(288),
                          margin: getMargin(top: 15),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(34),
                                        width: getHorizontalSize(284),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.teal300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(9))))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgBlueeyes1,
                                    height: getVerticalSize(33),
                                    width: getHorizontalSize(57),
                                    alignment: Alignment.bottomRight),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Password",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23))
                              ])),
                      Container(
                          height: getVerticalSize(185),
                          width: double.maxFinite,
                          margin: getMargin(top: 23),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgWavecircle,
                                    height: getVerticalSize(185),
                                    width: getHorizontalSize(187),
                                    alignment: Alignment.centerLeft),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 36, bottom: 16),
                                              child: SizedBox(
                                                  width: getHorizontalSize(50),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1.5),
                                                      color: ColorConstant
                                                          .teal30002))),
                                          Container(
                                              height: getVerticalSize(54),
                                              width: getHorizontalSize(103),
                                              margin: getMargin(left: 11),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text(
                                                            "Signup using ",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtBoogalooRegular23)),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                right: 36),
                                                            child: Text("Or",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtBoogalooRegular25)))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  top: 37, bottom: 15),
                                              child: SizedBox(
                                                  width: getHorizontalSize(58),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1.5),
                                                      color: ColorConstant
                                                          .teal30002,
                                                      indent: getHorizontalSize(
                                                          7))))
                                        ])),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRecog,
                                    height: getSize(40),
                                    width: getSize(40),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(17)),
                                    alignment: Alignment.bottomRight,
                                    margin: getMargin(right: 88, bottom: 19),
                                    onTap: () {
                                      onTapImgRecog(context);
                                    }),
                                CustomImageView(
                                    imagePath: ImageConstant.imgSignupbutton,
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(132),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 8, right: 53),
                                    onTap: () {
                                      onTapImgSignupbutton(context);
                                    })
                              ]))
                    ]))));
  }

  onTapImgLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapImgRecog(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recogSignUpOneScreen);
  }

  onTapImgSignupbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }
}
