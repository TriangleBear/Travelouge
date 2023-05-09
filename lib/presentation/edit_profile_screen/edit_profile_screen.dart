import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';
import 'package:travelogue_app/presentation/login_screen/login_screen.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
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
                                padding: const EdgeInsets.all(2),
                                child: SizedBox(
                                  height: 35.0,
                                  width: 300.0,
                                  child: TextField(
                                    obscureText: false,
                                    controller: _firstnameController,
                                    decoration: InputDecoration(
                                        fillColor: Color(0xffffbfc3),
                                        filled: true,
                                        hintText: documentSnapshot['firstName'],
                                        contentPadding: getPadding(left:10, top:5),
                                        hintStyle: AppStyle.txtSourceSansProEditing,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(getHorizontalSize(9)), // Removes the border color
                                        )
                                    ),
                                  ),
                                ),
                              ),),
                          //Display Last Name
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: getPadding(left: 55, top: 9),
                                  child: Text("Last Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtSourceSansProSemiBold23))),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: SizedBox(
                                height: 35.0,
                                width: 300.0,
                                child: TextField(
                                  obscureText: false,
                                  controller: _lastnameController,
                                  decoration: InputDecoration(
                                      fillColor: Color(0xffffbfc3),
                                      filled: true,
                                      hintText: documentSnapshot['lastName'],
                                      contentPadding: getPadding(left:10, top:5),
                                      hintStyle: AppStyle.txtSourceSansProEditing,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(getHorizontalSize(9)), // Removes the border color
                                      )
                                  ),
                                ),
                              ),
                            ),),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: getPadding(left: 55, top: 2),
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
                                  padding: getPadding(left: 55, top: 9),
                                  child: Text("Email",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtSourceSansProSemiBold23))),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: SizedBox(
                                height: 35.0,
                                width: 300.0,
                                child: TextField(
                                  obscureText: false,
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                      fillColor: Color(0xffffbfc3),
                                      filled: true,
                                      hintText: documentSnapshot['email'],
                                      contentPadding: getPadding(left:10, top:5),
                                      hintStyle: AppStyle.txtSourceSansProEditing,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(getHorizontalSize(9)), // Removes the border color
                                      )
                                  ),
                                ),
                              ),
                            ),),
                          Container(
                              height: getVerticalSize(179),
                              width: double.maxFinite,
                              margin: getMargin(top: 34.5),
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
                                    imagePath: ImageConstant.imgSavebutton29x127,
                                    height: getVerticalSize(29),
                                    width: getHorizontalSize(127),
                                    alignment: Alignment.topCenter,
                                  onTap: () async {
                                    // Retrieve the user document to be updated
                                    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
                                        .collection('users')
                                        .where('userName', isEqualTo: currentUserName)
                                        .get();

                                    // Get the document reference
                                    DocumentReference docReference =
                                        querySnapshot.docs.first.reference;

                                    // Create a map of fields to be updated
                                    Map<String, dynamic> updateData = {};

                                    // Check if each text field has input and add it to the update data
                                    if (_emailController.text.isNotEmpty) {
                                      updateData['email'] = _emailController.text;
                                    }
                                    if (_firstnameController.text.isNotEmpty) {
                                      updateData['firstName'] = _firstnameController.text;
                                    }
                                    if (_lastnameController.text.isNotEmpty) {
                                      updateData['lastName'] = _lastnameController.text;
                                    }

                                    // Update the fields if there are changes
                                    if (updateData.isNotEmpty) {
                                      docReference.update(updateData);
                                      onTapImgSavebutton(context);

                                    }
                                  },

                                )
                              ])),
                          //Edit Profile Button
                          CustomImageView(
                              imagePath: ImageConstant.imgEditingprofile,
                              height: getVerticalSize(34),
                              width: getHorizontalSize(390),
                              margin: getMargin(top:1.8)),
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
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapImgSavebutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
