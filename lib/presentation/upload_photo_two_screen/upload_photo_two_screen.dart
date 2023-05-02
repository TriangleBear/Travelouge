import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';
import 'package:travelouge/widgets/app_bar/appbar_image.dart';
import 'package:travelouge/widgets/app_bar/appbar_subtitle.dart';
import 'package:travelouge/widgets/app_bar/custom_app_bar.dart';

class UploadPhotoTwoScreen extends StatelessWidget {
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
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: size.height,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(657),
                                                width: double.maxFinite,
                                                margin: getMargin(bottom: 41),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgWavess1657x390,
                                                          height:
                                                              getVerticalSize(
                                                                  657),
                                                          width:
                                                              getHorizontalSize(
                                                                  390),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              width: double
                                                                  .maxFinite,
                                                              padding:
                                                                  getPadding(
                                                                      left: 28,
                                                                      top: 9,
                                                                      right: 28,
                                                                      bottom:
                                                                          9),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillTeal1009e,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImage1,
                                                                        height: getVerticalSize(
                                                                            183),
                                                                        width: getHorizontalSize(
                                                                            147),
                                                                        margin: getMargin(
                                                                            top:
                                                                                456)),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImage2,
                                                                        height: getVerticalSize(
                                                                            183),
                                                                        width: getHorizontalSize(
                                                                            146),
                                                                        margin: getMargin(
                                                                            top:
                                                                                456,
                                                                            right:
                                                                                3))
                                                                  ])))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getVerticalSize(146),
                                                width: double.maxFinite,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .img418d7e9d677b4,
                                                          height:
                                                              getVerticalSize(
                                                                  146),
                                                          width:
                                                              getHorizontalSize(
                                                                  390),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomAppBar(
                                                                    height:
                                                                        getVerticalSize(
                                                                            60),
                                                                    leadingWidth:
                                                                        132,
                                                                    leading: AppbarImage(
                                                                        height: getVerticalSize(
                                                                            60),
                                                                        width: getHorizontalSize(
                                                                            62),
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgArrow,
                                                                        margin: getMargin(
                                                                            right:
                                                                                70)),
                                                                    title: AppbarSubtitle(
                                                                        text:
                                                                            "ALL NOTES",
                                                                        margin: getMargin(
                                                                            left:
                                                                                54,
                                                                            top:
                                                                                17,
                                                                            bottom:
                                                                                18)),
                                                                    actions: [
                                                                      AppbarImage(
                                                                          height: getVerticalSize(
                                                                              39),
                                                                          width: getHorizontalSize(
                                                                              38),
                                                                          imagePath: ImageConstant
                                                                              .imgSaved,
                                                                          margin: getMargin(
                                                                              left: 11,
                                                                              top: 12,
                                                                              right: 11,
                                                                              bottom: 9),
                                                                          onTap: () {
                                                                            onTapSaved2(context);
                                                                          })
                                                                    ]),
                                                                Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            2),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            2),
                                                                    color: ColorConstant
                                                                        .teal300A7)
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 66,
                                                    right: 13),
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
                                                              left: 2),
                                                          child: Text(
                                                              "BORA BORA 2023",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBoogalooRegular40Teal900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Text(
                                                              "01/22/2023",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBoogalooRegular28)),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  367),
                                                          margin: getMargin(
                                                              top: 11),
                                                          child: Text(
                                                              "We stayed at a overwater bungalow, which offered\n spectacular views of the lagoon and the nearby \nsmall islands. The bungalow was spacious, \ncomfortable and provided a true sense of privacy \nand serenity.\n\nOne of the highlights of our trip was a snorkeling \nexcursion to the coral gardens, where we got up \nclose and personal with a variety of colorful fish \nand other marine life. We also went on a shark and\nray feeding adventure, which was both thrilling \nand educational.\n\nIn the evenings, we indulged in the local cuisine \nand were pleasantly surprised by the fresh \nseafood, tropical fruits and traditional dishes. \n\nOverall, our trip to Bora Bora was unforgettable \nand we can't wait to return to this tropical \nparadise in the future.",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSourceSansProRegular175))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 28,
                                                    top: 794,
                                                    right: 33),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgLists1,
                                                          height: getSize(59),
                                                          width: getSize(59),
                                                          onTap: () {
                                                            onTapImgListsone(
                                                                context);
                                                          }),
                                                      Spacer(flex: 45),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgCam1,
                                                          height: getSize(50),
                                                          width: getSize(50),
                                                          margin: getMargin(
                                                              top: 5,
                                                              bottom: 4)),
                                                      Spacer(flex: 54),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtAa(context);
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 12,
                                                                      bottom:
                                                                          10),
                                                              child: Text("Aa",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtBoogalooRegular30)))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapSaved2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapImgListsone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addBulletsScreen);
  }

  onTapTxtAa(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resizeTextScreen);
  }
}
