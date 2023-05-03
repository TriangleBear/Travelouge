import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';
import 'package:travelogue_app/widgets/app_bar/appbar_image.dart';
import 'package:travelogue_app/widgets/app_bar/custom_app_bar.dart';

class CreateNotesScreen extends StatelessWidget {
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
                                                              height:
                                                                  getVerticalSize(
                                                                      657),
                                                              width: double
                                                                  .maxFinite,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .teal1009e)))
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
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPinkwave,
                                                          height:
                                                              getVerticalSize(
                                                                  146),
                                                          width:
                                                              getHorizontalSize(
                                                                  390),
                                                          alignment:
                                                              Alignment.center),
                                                      CustomAppBar(
                                                          height:
                                                              getVerticalSize(
                                                                  51),
                                                          title: AppbarImage(
                                                              height:
                                                                  getVerticalSize(
                                                                      36),
                                                              width:
                                                                  getHorizontalSize(
                                                                      120),
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgBackbutton,
                                                              margin: getMargin(
                                                                  left: 12),
                                                              onTap: () {
                                                                onTapBackbutton(
                                                                    context);
                                                              }),
                                                          actions: [
                                                            AppbarImage(
                                                                height:
                                                                    getVerticalSize(
                                                                        39),
                                                                width:
                                                                    getHorizontalSize(
                                                                        38),
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgSavebutton,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            11,
                                                                        top: 1,
                                                                        right:
                                                                            11),
                                                                onTap: () {
                                                                  onTapSavebutton(
                                                                      context);
                                                                })
                                                          ])
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(top: 60),
                                                child: SizedBox(
                                                    width: double.maxFinite,
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(2),
                                                        thickness:
                                                            getVerticalSize(2),
                                                        color: ColorConstant
                                                            .teal300A7)))),
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
                                                                  .txtBoogalooRegular40)),
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
                                            alignment: Alignment.bottomRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtAa(context);
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        right: 33, bottom: 1),
                                                    child: Text("Aa",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtBoogalooRegular30)))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgLists1,
                                            height: getSize(59),
                                            width: getSize(59),
                                            alignment: Alignment.bottomLeft,
                                            margin: getMargin(left: 28),
                                            onTap: () {
                                              onTapImgListsone(context);
                                            }),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgCam1,
                                            height: getSize(50),
                                            width: getSize(50),
                                            alignment: Alignment.bottomCenter,
                                            onTap: () {
                                              onTapImgCamone(context);
                                            })
                                      ]))))
                    ]))));
  }

  onTapBackbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapSavebutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapTxtAa(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resizeTextScreen);
  }

  onTapImgListsone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addBulletsScreen);
  }

  onTapImgCamone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.uploadPhotoScreen);
  }
}
