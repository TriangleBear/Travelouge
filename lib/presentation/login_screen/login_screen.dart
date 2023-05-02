import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';
import 'package:travelouge/widgets/app_bar/appbar_image.dart';
import 'package:travelouge/widgets/app_bar/custom_app_bar.dart';
import 'package:travelouge/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(99),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(84.45),
                    width: getHorizontalSize(333.21),
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("TRAVELOUGE",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBoogalooRegular70)),
                      AppbarImage(
                          height: getVerticalSize(83),
                          width: getHorizontalSize(333),
                          imagePath: ImageConstant.imgMaskgroup,
                          margin: getMargin(bottom: 1))
                    ]))),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 5),
                    child: Container(
                        height: getVerticalSize(739),
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  margin: getMargin(left: 15),
                                  decoration: AppDecoration.fillTeal100,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapSignup(context);
                                                },
                                                child: Container(
                                                    height: getVerticalSize(74),
                                                    width:
                                                        getHorizontalSize(195),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Container(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              1,
                                                                          top:
                                                                              5,
                                                                          right:
                                                                              1,
                                                                          bottom:
                                                                              5),
                                                                  decoration: AppDecoration
                                                                      .fillTeal700
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder9),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(192),
                                                                            margin: getMargin(bottom: 27),
                                                                            decoration: AppDecoration.txtOutlineBlack9003f,
                                                                            child: Text("Don’t have an account yet?", maxLines: null, textAlign: TextAlign.right, style: AppStyle.txtSourceSansProSemiBoldItalic15))
                                                                      ]))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          right:
                                                                              12),
                                                                  child: Text(
                                                                      "SIGN UP",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtBoogalooRegular48)))
                                                        ])))),
                                        Container(
                                            height: getVerticalSize(582),
                                            width: getHorizontalSize(360),
                                            margin: getMargin(top: 7),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 25,
                                                              right: 22),
                                                          padding: getPadding(
                                                              left: 11,
                                                              top: 16,
                                                              right: 11,
                                                              bottom: 16),
                                                          decoration: AppDecoration
                                                              .outlineTeal300
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder27),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomTextFormField(
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    controller:
                                                                        usernameController,
                                                                    hintText:
                                                                        "Enter Username",
                                                                    margin: getMargin(
                                                                        left:
                                                                            7),
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .done),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 7,
                                                                        top:
                                                                            16),
                                                                    child: Text(
                                                                        "Enter Password",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSourceSansProSemiBold21)),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            35),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            284),
                                                                    margin: getMargin(
                                                                        left:
                                                                            7),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .teal300,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(9)))),
                                                                Container(
                                                                    margin: getMargin(
                                                                        left: 7,
                                                                        top: 6,
                                                                        bottom:
                                                                            156),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .txtOutlineWhiteA7003f,
                                                                    child: Text(
                                                                        "Forgot password?",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .right,
                                                                        style: AppStyle
                                                                            .txtSourceSansProSemiBoldItalic18))
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height: getSize(360),
                                                          width: getSize(360),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgWave1,
                                                                    height:
                                                                        getSize(
                                                                            360),
                                                                    width:
                                                                        getSize(
                                                                            360),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 25, top: 14, right: 22),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              children: [
                                                                                Padding(padding: getPadding(top: 34, bottom: 15), child: SizedBox(width: getHorizontalSize(110), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.teal30001))),
                                                                                Container(
                                                                                    height: getVerticalSize(50),
                                                                                    width: getHorizontalSize(86),
                                                                                    child: Stack(alignment: Alignment.topCenter, children: [
                                                                                      Align(alignment: Alignment.bottomCenter, child: Text("Login using ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBoogalooRegular22)),
                                                                                      Align(alignment: Alignment.topCenter, child: Text("Or", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBoogalooRegular22))
                                                                                    ])),
                                                                                Padding(padding: getPadding(top: 34, bottom: 14), child: SizedBox(width: getHorizontalSize(110), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.teal30001)))
                                                                              ]),
                                                                          Padding(
                                                                              padding: getPadding(left: 80, top: 3),
                                                                              child: Row(children: [
                                                                                Card(
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    elevation: 0,
                                                                                    margin: EdgeInsets.all(0),
                                                                                    color: ColorConstant.whiteA700,
                                                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder22),
                                                                                    child: Container(
                                                                                        height: getSize(44),
                                                                                        width: getSize(44),
                                                                                        decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                                                                                        child: Stack(children: [
                                                                                          CustomImageView(imagePath: ImageConstant.imgGoogle, height: getSize(44), width: getSize(44), alignment: Alignment.center)
                                                                                        ]))),
                                                                                CustomImageView(imagePath: ImageConstant.imgFb, height: getSize(44), width: getSize(44), margin: getMargin(left: 4)),
                                                                                CustomImageView(
                                                                                    imagePath: ImageConstant.imgRecog,
                                                                                    height: getSize(44),
                                                                                    width: getSize(44),
                                                                                    radius: BorderRadius.circular(getHorizontalSize(17)),
                                                                                    margin: getMargin(left: 5),
                                                                                    onTap: () {
                                                                                      onTapImgRecog(context);
                                                                                    })
                                                                              ]))
                                                                        ])))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  26),
                                                          width:
                                                              getHorizontalSize(
                                                                  114),
                                                          margin: getMargin(
                                                              top: 201),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          onTapLoginbutton(
                                                                              context);
                                                                        },
                                                                        child: Container(height: getVerticalSize(26), width: getHorizontalSize(114), decoration: BoxDecoration(color: ColorConstant.teal700, borderRadius: BorderRadius.circular(getHorizontalSize(13)))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                        "LOGIN",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSourceCodeProRomanMedium20
                                                                            .copyWith(letterSpacing: getHorizontalSize(2.0))))
                                                              ])))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  width: getHorizontalSize(195),
                                  padding: getPadding(
                                      left: 30, top: 4, right: 37, bottom: 4),
                                  decoration: AppDecoration.txtFillTeal900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtRoundedBorder9),
                                  child: Text("LOGIN",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBoogalooRegular48)))
                        ]))))));
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapImgRecog(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recogLoginScreen);
  }

  onTapLoginbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loadingScreenGScreen);
  }
}
