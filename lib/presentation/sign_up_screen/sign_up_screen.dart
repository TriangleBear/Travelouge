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
                                    )),
                                CustomImageView(
                                    imagePath: ImageConstant.imgSignupbutton,
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(132),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 20, right: 53),
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
