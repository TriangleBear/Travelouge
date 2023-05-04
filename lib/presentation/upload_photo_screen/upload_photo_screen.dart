import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';
import 'package:travelogue_app/widgets/app_bar/appbar_image.dart';
import 'package:travelogue_app/widgets/app_bar/custom_app_bar.dart';

class UploadPhotoScreen extends StatelessWidget {
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
                                                            onTapBackbutton1(
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
                                                              onTapSavebutton1(
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
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 5,
                                                    right: 20,
                                                    bottom: 5),
                                                decoration: AppDecoration
                                                    .outlineTeal7001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder27),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgExit,
                                                          height: getSize(33),
                                                          width: getSize(33),
                                                          alignment: Alignment
                                                              .centerRight,
                                                          onTap: () {
                                                            onTapImgExit(
                                                                context);
                                                          }),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8,
                                                                      top: 3),
                                                              child: Row(
                                                                  children: [
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            100),
                                                                        width: getHorizontalSize(
                                                                            80),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgImage1, height: getVerticalSize(100), width: getHorizontalSize(80), alignment: Alignment.center),
                                                                              CustomImageView(imagePath: ImageConstant.imgCheck1, height: getSize(15), width: getSize(15), alignment: Alignment.topRight, margin: getMargin(top: 2, right: 1))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            100),
                                                                        width: getHorizontalSize(
                                                                            80),
                                                                        margin: getMargin(
                                                                            left:
                                                                                20),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgImage2, height: getVerticalSize(100), width: getHorizontalSize(80), alignment: Alignment.center),
                                                                              CustomImageView(imagePath: ImageConstant.imgCheck1, height: getSize(15), width: getSize(15), alignment: Alignment.topRight, margin: getMargin(top: 2, right: 2))
                                                                            ]))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgUploadbutton,
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  159),
                                                          margin: getMargin(
                                                              top: 13),
                                                          onTap: () {
                                                            onTapImgUploadbutton(
                                                                context);
                                                          }),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgCam1,
                                                          height: getSize(50),
                                                          width: getSize(50),
                                                          margin: getMargin(
                                                              bottom: 1))
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
                                                                  .txtSourceSansProRegular175))
                                                    ]))),
                                      ])))
                    ]))));
  }

  onTapBackbutton1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapSavebutton1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapImgExit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createNotesScreen);
  }

  onTapImgUploadbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.uploadPhotoTwoScreen);
  }
}
