import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';
import 'package:travelogue_app/widgets/app_bar/appbar_image.dart';
import 'package:travelogue_app/widgets/app_bar/custom_app_bar.dart';

class ResizedTextScreen extends StatelessWidget {
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
                              child: Container(
                                  height: size.height,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(640),
                                                width: double.maxFinite,
                                                margin: getMargin(
                                                    bottom: 45),
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
                                                              400),
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
                                                height: getVerticalSize(160),
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
                                                              160),
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
                                                                  top: 10,
                                                                  left: 12),
                                                              onTap: () {
                                                                onTapBackbutton6(
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
                                                                    top: 10,
                                                                    right:
                                                                    11),
                                                                onTap: () {
                                                                  onTapSavebutton6(
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
                                                    right: 11),
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
                                                              top: 20),
                                                          child: Text(
                                                              "We stayed at a overwater bungalow, which offered spectacular views of the lagoon and the nearby small islands. The bungalow was spacious, comfortable and \nprovided a true sense of privacy and serenity.\n\nOne of the highlights of our trip was a snorkeling excursion to the coral gardens, where we got up close and personal with a variety of colorful fish and other marine life. We also went on a shark and ray feeding adventure, which was both thrilling and educational.\n\nIn the evenings, we indulged in the local cuisine and were pleasantly surprised by the fresh seafood, tropical fruits and traditional dishes. \n\nOverall, our trip to Bora Bora was unforgettable and we can't wait to return to this tropical paradise in the future.",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSourceSansProBold175))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtAa(context);
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        right: 33, bottom: 5),
                                                    child: Text("Aa",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign.left,
                                                        style: AppStyle
                                                            .txtBoogalooRegular30)))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgLists1,
                                            height: getSize(65),
                                            width: getSize(65),
                                            alignment: Alignment.bottomLeft,
                                            margin: getMargin(top: 795,left: 20),
                                            onTap: () {
                                              onTapImgListsone(context);
                                            }),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgCam1,
                                            height: getSize(50),
                                            width: getSize(50),
                                            alignment: Alignment.bottomCenter,
                                            margin: getMargin(top: 800),
                                            onTap: () {
                                              onTapImgCamone(context);
                                            })
                                      ])))
                    ]))));
  }

  onTapBackbutton6(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapSavebutton6(BuildContext context) {
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
