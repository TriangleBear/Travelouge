import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';

class RecogSignUpOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 28, top: 16, right: 28, bottom: 16),
                          decoration: AppDecoration.fillTeal100,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(334),
                                    decoration:
                                        AppDecoration.txtOutlineWhiteA7007f,
                                    child: Text(
                                        "COMPLETE FACE \nIDENTIFICATION \nSET-UP",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBoogalooRegular55)),
                                Container(
                                    width: getHorizontalSize(313),
                                    margin: getMargin(
                                        left: 17,
                                        top: 15,
                                        right: 4,
                                        bottom: 203),
                                    padding: getPadding(
                                        left: 10,
                                        top: 11,
                                        right: 10,
                                        bottom: 11),
                                    decoration: AppDecoration.outlineTeal300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder27),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(left: 5, top: 14),
                                              child: Text("First Name",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSourceSansProSemiBold23)),
                                          Container(
                                              height: getVerticalSize(34),
                                              width: getHorizontalSize(284),
                                              margin: getMargin(left: 1),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.teal300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              9)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 5, top: 18),
                                              child: Text("Last Name",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSourceSansProSemiBold23)),
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(284),
                                              margin: getMargin(left: 1),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.teal300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              9)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 5, top: 20),
                                              child: Text("Username",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSourceSansProSemiBold23)),
                                          Container(
                                              height: getVerticalSize(34),
                                              width: getHorizontalSize(284),
                                              margin: getMargin(left: 1),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.teal300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              9)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 4, top: 19),
                                              child: Text("Email",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSourceSansProSemiBold23)),
                                          Container(
                                              height: getVerticalSize(34),
                                              width: getHorizontalSize(284),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.teal300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              9)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapSignupbutton(context);
                                                  },
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(33),
                                                      width: getHorizontalSize(
                                                          140),
                                                      margin:
                                                          getMargin(top: 32),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            32),
                                                                        width: getHorizontalSize(
                                                                            140),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.teal30002,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(13)),
                                                                            boxShadow: [
                                                                              BoxShadow(color: ColorConstant.lightBlue900, spreadRadius: getHorizontalSize(2), blurRadius: getHorizontalSize(2), offset: Offset(3, 5))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10),
                                                                    child: Text(
                                                                        "SIGN UP",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSourceCodeProRomanMedium25
                                                                            .copyWith(letterSpacing: getHorizontalSize(1.75)))))
                                                          ]))))
                                        ]))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.img59a637f979364,
                      height: getVerticalSize(316),
                      width: getHorizontalSize(390),
                      alignment: Alignment.bottomCenter)
                ]))));
  }

  onTapSignupbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loadingScreenGScreen);
  }
}
