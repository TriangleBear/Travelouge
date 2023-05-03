import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class RecogLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.teal100,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgFaceidentification,
                          height: getVerticalSize(40),
                          width: getHorizontalSize(370),
                          margin: getMargin(top: 33)),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogin,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(top: 32)),
                      CustomImageView(
                          imagePath: ImageConstant.imgSignup,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerRight,
                          margin: getMargin(top: 6),
                          onTap: () {
                            onTapImgSignup(context);
                          }),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 48),
                          color: ColorConstant.deepOrange100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder124),
                          child: Container(
                              height: getSize(249),
                              width: getSize(249),
                              padding: getPadding(
                                  left: 55, top: 42, right: 55, bottom: 42),
                              decoration: AppDecoration.fillDeeporange100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder124),
                              child: Stack(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFace,
                                    height: getVerticalSize(159),
                                    width: getHorizontalSize(138),
                                    alignment: Alignment.topCenter)
                              ]))),
                      Container(
                          height: getVerticalSize(264),
                          width: double.maxFinite,
                          margin: getMargin(top: 34),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(226),
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgWavesblue,
                                              height: getVerticalSize(226),
                                              width: getHorizontalSize(390),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgArrow,
                                              height: getVerticalSize(63),
                                              width: getHorizontalSize(62),
                                              alignment: Alignment.bottomLeft,
                                              onTap: () {
                                                onTapImgArrow(context);
                                              })
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgLoginbutton39x143,
                                height: getVerticalSize(39),
                                width: getHorizontalSize(143),
                                alignment: Alignment.topCenter,
                                onTap: () {
                                  onTapImgLoginbutton(context);
                                })
                          ]))
                    ]))));
  }

  onTapImgSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapImgArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapImgLoginbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }
}
