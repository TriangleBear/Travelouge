import '../notes_display_screen/widgets/notes_display_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class NotesDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgWavess1,
                      height: getVerticalSize(844),
                      width: getHorizontalSize(390),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: size.height,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 16, right: 17),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(left: 4, right: 2),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgAllnotes,
                                                        height:
                                                            getVerticalSize(33),
                                                        width:
                                                            getHorizontalSize(
                                                                157),
                                                        margin: getMargin(
                                                            top: 11,
                                                            bottom: 11)),
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapNew(context);
                                                        },
                                                        child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin:
                                                                EdgeInsets.all(
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
                                                                        .roundedBorder8),
                                                            child: Container(
                                                                height:
                                                                    getSize(55),
                                                                width:
                                                                    getSize(55),
                                                                padding: getPadding(
                                                                    left: 3,
                                                                    top: 5,
                                                                    right: 3,
                                                                    bottom: 5),
                                                                decoration: AppDecoration
                                                                    .outlineTeal700
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .roundedBorder8),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgNotes,
                                                                          height: getSize(
                                                                              44),
                                                                          width: getSize(
                                                                              44),
                                                                          alignment:
                                                                              Alignment.centerRight)
                                                                    ]))))
                                                  ])),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(top: 8),
                                                  child: GridView.builder(
                                                      shrinkWrap: true,
                                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                          mainAxisExtent:
                                                              getVerticalSize(
                                                                  214),
                                                          crossAxisCount: 2,
                                                          mainAxisSpacing:
                                                              getHorizontalSize(
                                                                  38),
                                                          crossAxisSpacing:
                                                              getHorizontalSize(
                                                                  38)),
                                                      physics:
                                                          BouncingScrollPhysics(),
                                                      itemCount: 6,
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
                                imagePath: ImageConstant.imgProfile,
                                height: getSize(39),
                                width: getSize(39),
                                alignment: Alignment.topRight,
                                margin: getMargin(right: 8),
                                onTap: () {
                                  onTapImgProfile(context);
                                })
                          ])))
                ]))));
  }

  onTapNew(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createNotesScreen);
  }

  onTapImgProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
