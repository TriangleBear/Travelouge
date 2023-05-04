import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';
import 'package:travelogue_app/widgets/app_bar/appbar_image.dart';
import 'package:travelogue_app/widgets/app_bar/custom_app_bar.dart';

class ResizeTextScreen extends StatelessWidget {
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
                                                                onTapBackbutton4(
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
                                                                  onTapSavebutton4(
                                                                      context);
                                                                })
                                                          ])
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 6,
                                                    right: 17,
                                                    bottom: 6),
                                                decoration: AppDecoration
                                                    .outlineTeal7001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder27),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgExit,
                                                          height: getSize(33),
                                                          width: getSize(33),
                                                          onTap: () {
                                                            onTapImgExit(
                                                                context);
                                                          }),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      57),
                                                              width:
                                                                  getHorizontalSize(
                                                                      332),
                                                              margin: getMargin(
                                                                  top: 1),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 8, right: 4, bottom: 4),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                              Padding(padding: getPadding(top: 16, bottom: 4), child: Text("A", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProSemiBold25)),
                                                                              Spacer(flex: 51),
                                                                              Padding(padding: getPadding(top: 6, bottom: 2), child: Text("A", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProSemiBold35)),
                                                                              Spacer(flex: 48),
                                                                              Text("A", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProSemiBold42)
                                                                            ]))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgToggle,
                                                                        height: getVerticalSize(
                                                                            14),
                                                                        width: getHorizontalSize(
                                                                            332),
                                                                        alignment:
                                                                            Alignment.bottomCenter)
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 39,
                                                              top: 20,
                                                              right: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapTxtBold(
                                                                          context);
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                34),
                                                                        child: Text(
                                                                            "Bold",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtSourceSansProBold35))),
                                                                Spacer(),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        bottom:
                                                                            34),
                                                                    child: Text(
                                                                        "Italic",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSourceSansProSemiBoldItalic35)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 8,
                                                                        top:
                                                                            42),
                                                                    child: Text(
                                                                        "Aa",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtBoogalooRegular30))
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
                                                            .teal300A7))))
                                      ])))
                    ]))));
  }

  onTapBackbutton4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapSavebutton4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapImgExit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createNotesScreen);
  }

  onTapTxtBold(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resizeTextTwoScreen);
  }
}
