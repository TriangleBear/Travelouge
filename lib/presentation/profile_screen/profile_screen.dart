import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';
import 'package:travelogue_app/presentation/login_screen/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final CollectionReference _users = FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.teal100,
            body: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('users').where('userName', isEqualTo: currentUserName).snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot){
                if(streamSnapshot.hasData){
                  return ListView.builder(
                    itemCount: streamSnapshot.data!.docs.length,
                    itemBuilder: (context, index){
                      final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                      return Container(
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgTravelogue,
                                height: getVerticalSize(62),
                                width: getHorizontalSize(324),
                                margin: getMargin(top: 30)),
                            CustomImageView(
                                imagePath: ImageConstant.imgFace176x176,
                                height: getSize(176),
                                width: getSize(176),
                                margin: getMargin(top: 21)),

                            //Display First Name
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 55, top: 10),
                                    child: Text("First Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(top:5),
                                    child: Container(height: getVerticalSize(34),
                                        width: getHorizontalSize(284),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.deepOrange100,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(9)),
                                            border: Border.all(
                                                color: ColorConstant.teal700,
                                                width: getHorizontalSize(1))),
                                      child: Padding(
                                        padding: getPadding(top: 1, left: 5),
                                        child: Text(documentSnapshot['firstName'],
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold21),
                                      ),
                                    ))),
                            //Display Last Name
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 55, top: 10),
                                    child: Text("Last Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(top: 5),
                                    child: Container(height: getVerticalSize(34),
                                      width: getHorizontalSize(284),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.deepOrange100,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(9)),
                                          border: Border.all(
                                              color: ColorConstant.teal700,
                                              width: getHorizontalSize(1))),
                                      child: Padding(
                                        padding: getPadding(top: 1, left: 5),
                                        child: Text(documentSnapshot['lastName'],
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold21),
                                      ),
                                    ))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 55, top: 10),
                                    child: Text("Username",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(top: 5),
                                    child: Container(height: getVerticalSize(34),
                                      width: getHorizontalSize(284),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.deepOrange100,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(9)),
                                          border: Border.all(
                                              color: ColorConstant.teal700,
                                              width: getHorizontalSize(1))),
                                      child: Padding(
                                        padding: getPadding(top: 1, left: 5),
                                        child: Text(documentSnapshot['userName'],
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold21),
                                      ),
                                    ))),
                            //Display Email
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 55, top: 10),
                                    child: Text("Email",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold23))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(top: 5),
                                    child: Container(height: getVerticalSize(34),
                                      width: getHorizontalSize(284),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.deepOrange100,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(9)),
                                          border: Border.all(
                                              color: ColorConstant.teal700,
                                              width: getHorizontalSize(1))),
                                      child: Padding(
                                        padding: getPadding(top: 1, left: 5),
                                        child: Text(documentSnapshot['email'],
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold23),
                                      ),
                                    ))),
                            Container(
                                height: getVerticalSize(179),
                                width: double.maxFinite,
                                margin: getMargin(top: 29),
                                child:
                                Stack(alignment: Alignment.topCenter, children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: getVerticalSize(165),
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgWavepink156x390,
                                                    height: getVerticalSize(165),
                                                    width: getHorizontalSize(390),
                                                    alignment: Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant.imgArrow,
                                                    height: getVerticalSize(63),
                                                    width: getHorizontalSize(62),
                                                    alignment: Alignment.bottomLeft,
                                                    onTap: () {
                                                      onTapImgArrow(context);
                                                    })
                                              ]))),
                                  //Logout Button
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLogoutbutton,
                                      height: getVerticalSize(29),
                                      width: getHorizontalSize(127),
                                      alignment: Alignment.topCenter,
                                      onTap: () {
                                        onTapImgLogoutbutton(context);
                                      })
                                ])),
                            //Edit Profile Button
                            CustomImageView(
                                imagePath: ImageConstant.imgEditprofile,
                                height: getVerticalSize(34),
                                width: getHorizontalSize(390),
                                margin: getMargin(top:1.8),
                                onTap: () {
                                  onTapImgEditprofile(context);
                                }),
                          ],
                        ),
                      );
                    },
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
        ));
  }

  onTapImgArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapImgLogoutbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapImgEditprofile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }
}
