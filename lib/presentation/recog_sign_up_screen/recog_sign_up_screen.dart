import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class RecogSignUpScreen extends StatelessWidget {
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
                          imagePath: ImageConstant.imgCompletesetup,
                          height: getVerticalSize(180),
                          width: getHorizontalSize(300),
                          margin: getMargin(top: 25)),
                      Container(
                          margin: getMargin(left: 39, top: 21, right: 38),
                          padding: getPadding(
                              left: 14, top: 8, right: 14, bottom: 12),
                          decoration: AppDecoration.outlineTeal300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder27),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: Text("First Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23)),
                                Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)))),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("Last Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23)),
                                Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)))),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("Username",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23)),
                                Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)))),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Text("Email",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23)),
                                Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)))),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSignupbutton37x144,
                                    height: getVerticalSize(37),
                                    width: getHorizontalSize(144),
                                    alignment: Alignment.center,
                                    margin: getMargin(top: 37),
                                    onTap: () {
                                      onTapImgSignupbutton(context);
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(200),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgWaveblue,
                                height: getVerticalSize(210),
                                width: getHorizontalSize(387),
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant.imgArrow,
                                height: getVerticalSize(63),
                                width: getHorizontalSize(62),
                                alignment: Alignment.bottomLeft,
                                onTap: () {
                                  onTapImgArrow(context);
                                })
                          ]))
                    ]))));
  }

  onTapImgSignupbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapImgArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recogSignUpOneScreen);
  }
}
