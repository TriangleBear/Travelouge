import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';
import 'package:travelouge/widgets/app_bar/appbar_image.dart';
import 'package:travelouge/widgets/app_bar/appbar_subtitle.dart';
import 'package:travelouge/widgets/app_bar/custom_app_bar.dart';
import 'package:travelouge/widgets/custom_button.dart';

class ResizeTextTwoScreen extends StatelessWidget {
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
                                imagePath: ImageConstant.img418d7e9d677b4,
                                height: getVerticalSize(146),
                                width: getHorizontalSize(390),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomAppBar(
                                          height: getVerticalSize(60),
                                          leadingWidth: 132,
                                          leading: AppbarImage(
                                              height: getVerticalSize(60),
                                              width: getHorizontalSize(62),
                                              imagePath: ImageConstant.imgArrow,
                                              margin: getMargin(right: 70)),
                                          title: AppbarSubtitle(
                                              text: "ALL NOTES",
                                              margin: getMargin(
                                                  left: 54,
                                                  top: 17,
                                                  bottom: 18)),
                                          actions: [
                                            AppbarImage(
                                                height: getVerticalSize(39),
                                                width: getHorizontalSize(38),
                                                imagePath:
                                                    ImageConstant.imgSaved,
                                                margin: getMargin(
                                                    left: 11,
                                                    top: 12,
                                                    right: 11,
                                                    bottom: 9),
                                                onTap: () {
                                                  onTapSaved4(context);
                                                })
                                          ]),
                                      Divider(
                                          height: getVerticalSize(2),
                                          thickness: getVerticalSize(2),
                                          color: ColorConstant.teal300A7)
                                    ]))
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: getVerticalSize(830),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgWavess1657x390,
                                            height: getVerticalSize(657),
                                            width: getHorizontalSize(390),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(657),
                                                width: double.maxFinite,
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .teal1009e))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(left: 10),
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
                                                                  379),
                                                          margin: getMargin(
                                                              top: 10),
                                                          child: Text(
                                                              "We stayed at a overwater bungalow,  which\noffered  spectacular views of the lagoon \nand the nearby small islands. The\nbungalow was spacious, comfortable and \nprovided a true sense of privacy and \nserenity.\n\nOne of the highlights of our trip was a \nsnorkeling  excursion to the coral gardens, \nwhere we got up close and personal with a\nvariety of colorful fish and other marine \nlife. We also went on a shark and ray \nfeeding adventure, which was both thrilling \nand educational.\n\nIn the evenings, we indulged in the local \ncuisine and were pleasantly surprised by \nthe fresh seafood, tropical fruits and \ntraditional dishes. ",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSourceSansProRegular21))
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
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  32),
                                                          width: getSize(32),
                                                          text: "x",
                                                          variant: ButtonVariant
                                                              .OutlineTeal700,
                                                          shape: ButtonShape
                                                              .CircleBorder16,
                                                          onTap: () {
                                                            onTapX(context);
                                                          }),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      58),
                                                              width:
                                                                  getHorizontalSize(
                                                                      332),
                                                              margin: getMargin(
                                                                  top: 2),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 8, right: 4, bottom: 5),
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
                                                              top: 19,
                                                              right: 16,
                                                              bottom: 48),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        bottom:
                                                                            34),
                                                                    child: Text(
                                                                        "Bold",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSourceSansProBold35)),
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
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapSaved4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapX(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resizedTextScreen);
  }
}
