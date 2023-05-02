import '../notes_display_screen/widgets/notes_display_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:travelouge/core/app_export.dart';

class NotesDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgWavess1,
                      height: getVerticalSize(844),
                      width: getHorizontalSize(390),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: getVerticalSize(890),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 48, right: 17),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, right: 2),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            margin: getMargin(
                                                                top: 2,
                                                                bottom: 5),
                                                            decoration:
                                                                AppDecoration
                                                                    .txtOutlineTeal900,
                                                            child: Text(
                                                                "ALL NOTES",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtBoogalooRegular40)),
                                                        Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin: EdgeInsets.all(
                                                                0),
                                                            color: ColorConstant
                                                                .blueGray200,
                                                            shape: RoundedRectangleBorder(
                                                                side: BorderSide(
                                                                    color: ColorConstant
                                                                        .teal700,
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1)),
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder9),
                                                            child: Container(
                                                                height:
                                                                    getSize(55),
                                                                width:
                                                                    getSize(55),
                                                                padding: getPadding(
                                                                    left: 2,
                                                                    top: 5,
                                                                    right: 2,
                                                                    bottom: 5),
                                                                decoration: AppDecoration
                                                                    .outlineTeal700
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .roundedBorder9),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgNotesp1,
                                                                          height: getVerticalSize(
                                                                              43),
                                                                          width: getHorizontalSize(
                                                                              44),
                                                                          alignment:
                                                                              Alignment.centerRight),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgNotesg1,
                                                                          height: getSize(
                                                                              43),
                                                                          width: getSize(
                                                                              43),
                                                                          alignment: Alignment
                                                                              .centerRight,
                                                                          margin:
                                                                              getMargin(right: 2)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgNotesw1,
                                                                          height: getSize(
                                                                              45),
                                                                          width: getSize(
                                                                              45),
                                                                          alignment: Alignment
                                                                              .centerRight,
                                                                          margin:
                                                                              getMargin(right: 1))
                                                                    ])))
                                                      ])),
                                              Expanded(
                                                  child: Container(
                                                      margin: getMargin(top: 8),
                                                      padding: getPadding(
                                                          left: 4,
                                                          top: 3,
                                                          right: 4,
                                                          bottom: 3),
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: fs.Svg(
                                                                  ImageConstant
                                                                      .imgGroup14),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: ListView.separated(
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        57));
                                                          },
                                                          itemCount: 3,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return NotesDisplayItemWidget();
                                                          })))
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgNavigationbar,
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(390),
                                    alignment: Alignment.topCenter),
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: getSize(39),
                                    width: getSize(39),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(right: 8),
                                    onTap: () {
                                      onTapImgVector(context);
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgComponent1,
                                    height: getSize(129),
                                    width: getSize(129),
                                    alignment: Alignment.bottomCenter)
                              ])))
                ]))));
  }

  onTapImgVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
