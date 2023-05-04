import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class RecogSignUpOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepOrange100,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgFaceidentification39x371,
                          height: getVerticalSize(42),
                          width: getHorizontalSize(372),
                          margin: getMargin(left: 10, top: 31)),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogin69x195,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          margin: getMargin(top: 32),
                          onTap: () {
                            onTapImgLogin(context);
                          }),
                      CustomImageView(
                          imagePath: ImageConstant.imgSignup69x195,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerRight,
                          margin: getMargin(top: 6)),
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 51),
                              color: ColorConstant.teal100,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder124),
                              child: Container(
                                  height: getSize(249),
                                  width: getSize(249),
                                  padding: getPadding(
                                      left: 53, top: 39, right: 53, bottom: 39),
                                  decoration: AppDecoration.fillTeal100
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder124),
                                  child: Stack(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgFace,
                                        height: getVerticalSize(159),
                                        width: getHorizontalSize(138),
                                        alignment: Alignment.topCenter)
                                  ])))),
                      Container(
                          height: getVerticalSize(264),
                          width: double.maxFinite,
                          margin: getMargin(top: 31),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(270),
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgWavepink,
                                              height: getVerticalSize(270),
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
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: getVerticalSize(33),
                                    width: getHorizontalSize(140),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: getVerticalSize(32),
                                                  width: getHorizontalSize(140),
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
                                                            offset:
                                                                Offset(3, 5))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(left: 10),
                                                  child: Text("SIGN UP",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSourceCodeProRomanMedium25
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      1.75)))))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgSignupbutton37x144,
                                height: getVerticalSize(37),
                                width: getHorizontalSize(144),
                                alignment: Alignment.topCenter,
                                onTap: () {
                                  onTapImgSignupbutton(context);
                                })
                          ]))
                    ]))));
  }

  onTapImgLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapImgArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapImgSignupbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recogSignUpScreen);
  }
}
