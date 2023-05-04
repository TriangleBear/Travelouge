import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class EditProfileScreen extends StatelessWidget {
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
                          imagePath: ImageConstant.imgTravelogue,
                          height: getVerticalSize(62),
                          width: getHorizontalSize(324),
                          margin: getMargin(top: 30)),
                      CustomImageView(
                          imagePath: ImageConstant.imgFace176x176,
                          height: getSize(176),
                          width: getSize(176),
                          margin: getMargin(top: 21)),
                      Container(
                          height: getVerticalSize(61),
                          width: getHorizontalSize(284),
                          margin: getMargin(top: 17),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepOrange100,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)),
                                        border: Border.all(
                                            color: ColorConstant.teal700,
                                            width: getHorizontalSize(1))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 4),
                                    child: Text("First Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23)))
                          ])),
                      Container(
                          height: getVerticalSize(59),
                          width: getHorizontalSize(284),
                          margin: getMargin(top: 18),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(35),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepOrange100,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)),
                                        border: Border.all(
                                            color: ColorConstant.teal700,
                                            width: getHorizontalSize(1))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 4),
                                    child: Text("Last Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23)))
                          ])),
                      Container(
                          height: getVerticalSize(58),
                          width: getHorizontalSize(284),
                          margin: getMargin(top: 20),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepOrange100,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)),
                                        border: Border.all(
                                            color: ColorConstant.teal700,
                                            width: getHorizontalSize(1))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 4),
                                    child: Text("Username",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23)))
                          ])),
                      Container(
                          height: getVerticalSize(59),
                          width: getHorizontalSize(284),
                          margin: getMargin(top: 19),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepOrange100,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)),
                                        border: Border.all(
                                            color: ColorConstant.teal700,
                                            width: getHorizontalSize(1))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 4),
                                    child: Text("Email",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23)))
                          ])),
                      Container(
                          height: getVerticalSize(179),
                          width: double.maxFinite,
                          margin: getMargin(top: 30),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(165),
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgWavepink156x390,
                                              height: getVerticalSize(165),
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
                                imagePath: ImageConstant.imgSavebutton29x127,
                                height: getVerticalSize(29),
                                width: getHorizontalSize(127),
                                alignment: Alignment.topCenter,
                                onTap: () {
                                  onTapImgSavebutton(context);
                                })
                          ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgEditingprofile,
                          height: getVerticalSize(34),
                          width: getHorizontalSize(390),
                          margin: getMargin(top:1.8))
                    ]))));
  }

  onTapImgArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapImgSavebutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
