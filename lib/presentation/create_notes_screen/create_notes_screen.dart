import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';
import 'package:travelogue_app/widgets/app_bar/appbar_image.dart';
import 'package:travelogue_app/widgets/app_bar/custom_app_bar.dart';

class CreateNotesScreen extends StatefulWidget {
  @override
  State<CreateNotesScreen> createState() => _CreateNotesScreenState();
}

class _CreateNotesScreenState extends State<CreateNotesScreen> {
  TextEditingController _noteTitle = TextEditingController();
  TextEditingController _noteContent = TextEditingController();
  TextEditingController _noteDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("assets/images/img_WaveBackground.png"),
                  fit:BoxFit.cover,)
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                              child: Container(
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getVerticalSize(160),
                                                width: double.maxFinite,
                                                child: Stack(
                                                    children: [
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
                                                                        top: 10,
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

                                        Container(
                                          padding: getPadding(left: 10, top: 66, right: 13),
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
                                                  padding: getPadding(left:5,),
                                                  child: SizedBox(
                                                    height: 45,
                                                    child: TextField(
                                                        controller: _noteTitle,
                                                        style: AppStyle.txtBoogalooRegular40
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(top:10,left:5,),
                                                  child: SizedBox(
                                                    height: 30,
                                                    child: TextField(
                                                        controller: _noteDate,
                                                        style: AppStyle.txtBoogalooRegular28
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(top:10,left:5,),
                                                  child: SizedBox(
                                                    height: 400,
                                                    child: TextField(
                                                        controller: _noteContent,
                                                        keyboardType: TextInputType.multiline,
                                                        maxLines: null,
                                                        style: AppStyle.txtSourceSansProRegular175
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapImgCamone(context);
                                                      },
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant.imgLists1,
                                                        height: getSize(65),
                                                        width: getSize(65),
                                                        alignment: Alignment.bottomLeft,
                                                        margin: getMargin(top:800,left: 20),
                                                      ))
                                              ),
                                              Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapImgListsone(context);
                                                      },
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant.imgCam1,
                                                        height: getSize(50),
                                                        width: getSize(50),
                                                        alignment: Alignment.bottomCenter,
                                                        margin: getMargin(top:805,left: 90),
                                                      ))
                                              ),
                                              Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapTxtAa(context);
                                                      },
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant.imgAa,
                                                        height: getSize(40),
                                                        width: getSize(40),
                                                        alignment: Alignment.bottomLeft,
                                                        margin: getMargin(top:800,left: 110),
                                                      ))
                                              ),
                                            ],
                                          ),

                                        )

                                      ])
                              ))
                    ])

            )));
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
