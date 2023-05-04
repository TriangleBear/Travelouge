import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class LoginScreen extends StatelessWidget {
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
                          imagePath: ImageConstant.imgLogin,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(top: 18)),
                      CustomImageView(
                          imagePath: ImageConstant.imgSignup,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerRight,
                          margin: getMargin(top: 6),
                          onTap: () {
                            onTapImgSignup(context);
                          }),
                      Container(
                          margin: getMargin(left: 40, top: 13, right: 37),
                          padding: getPadding(top: 19, bottom: 10),
                          decoration: AppDecoration.outlineTeal300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder27),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18, top: 12),
                                        child: Text("Enter Username",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold21))),
                                Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18, top: 17),
                                        child: Text("Enter Password",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold21))),
                                Container(
                                    height: getVerticalSize(35),
                                    width: getHorizontalSize(284),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal300,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9)))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgLoginbutton,
                                    height: getVerticalSize(26),
                                    width: getHorizontalSize(114),
                                    margin: getMargin(top: 26),
                                    onTap: () {
                                      onTapImgLoginbutton(context);
                                    }),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 34, bottom: 14),
                                              child: SizedBox(
                                                  width: getHorizontalSize(110),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1.5),
                                                      color: ColorConstant
                                                          .teal30001))),
                                          Container(
                                              height: getVerticalSize(50),
                                              width: getHorizontalSize(86),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Text("Or",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtBoogalooRegular22)),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text(
                                                            "Login using ",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtBoogalooRegular22))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  top: 34, bottom: 14),
                                              child: SizedBox(
                                                  width: getHorizontalSize(110),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1.5),
                                                      color: ColorConstant
                                                          .teal30001)))
                                        ])),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRecog,
                                    height: getSize(44),
                                    width: getSize(44),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(17)),
                                    margin: getMargin(top: 6),
                                    onTap: () {
                                      onTapImgRecog(context);
                                    })
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgWave1,
                          height: getVerticalSize(226),
                          width: getHorizontalSize(360))
                    ]))));
  }

  onTapImgSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapImgLoginbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapImgRecog(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recogLoginScreen);
  }
}
