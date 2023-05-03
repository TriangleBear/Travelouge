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
                      Container(
                          height: getVerticalSize(146),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPinkwave,
                                height: getVerticalSize(146),
                                width: getHorizontalSize(390),
                                alignment: Alignment.center),
                            CustomAppBar(
                                height: getVerticalSize(51),
                                title: AppbarImage(
                                    height: getVerticalSize(36),
                                    width: getHorizontalSize(120),
                                    imagePath: ImageConstant.imgBackbutton,
                                    margin: getMargin(left: 12),
                                    onTap: () {
                                      onTapBackbutton1(context);
                                    }),
                                actions: [
                                  AppbarImage(
                                      height: getVerticalSize(39),
                                      width: getHorizontalSize(38),
                                      imagePath: ImageConstant.imgSavebutton,
                                      margin: getMargin(
                                          left: 11, top: 1, right: 11),
                                      onTap: () {
                                        onTapSavebutton1(context);
                                      })
                                ])
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: getVerticalSize(802),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(657),
                                                width: double.maxFinite,
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
                                                              bottom: 8))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 6,
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
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                                width: double.maxFinite,
                                                child: Divider(
                                                    height: getVerticalSize(2),
                                                    thickness:
                                                        getVerticalSize(2),
                                                    color: ColorConstant
                                                        .teal300A7)))
                                      ]))))
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
