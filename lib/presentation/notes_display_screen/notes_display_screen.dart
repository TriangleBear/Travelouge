import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelogue_app/presentation/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';
import 'package:travelogue_app/presentation/notes_display_screen/widgets/notes_display_item_widget.dart';
import 'package:travelogue_app/presentation/resize_text_two_screen/edit_notes_screen.dart';

class NotesDisplayScreen extends StatelessWidget {
  final ref = FirebaseFirestore.instance.collection('users').doc(currentUserName).collection('userNotes');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstant.imgWavess1),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: size.height,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                          stream: FirebaseFirestore.instance.collection('users').doc(currentUserName).collection('userNotes').snapshots(),
                          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                              return Padding(
                                padding: getPadding(top:100),
                                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                                  itemCount: snapshot.hasData?snapshot.data!.docs.length:0,
                                  itemBuilder: (_,index) {
                                    final DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];
                                  return GestureDetector(
                                    onTap: () {
                                      if (snapshot.hasData && snapshot.data!.docs.length > index) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => EditNoteScreen(
                                              docToEdit: snapshot.data!.docs[index],
                                            ),
                                          ),
                                        );
                                      }
                                    },

                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      height: 200,
                                      color: ColorConstant.deepOrange100,
                                      child: Column(
                                        children: [
                                          Text(documentSnapshot['noteTitle'], style: AppStyle.txtTitleDisplay),
                                          Text(documentSnapshot['noteDate'], style: AppStyle.txtDateDisplay,),
                                          Text(documentSnapshot['noteContent'], style: AppStyle.txtNoteDisplay,),
                                        ],
                                      ),
                                    ),
                                  );
                                  },

                                ),
                              );

                            return Text("There's No Notes", style: AppStyle.txtBoogalooRegular30,);
                          },
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgNavigationbar,
                          height: getVerticalSize(38),
                          width: getHorizontalSize(390),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgProfile,
                          height: getSize(39),
                          width: getSize(39),
                          alignment: Alignment.topRight,
                          margin: getMargin(right: 8),
                          onTap: () {
                            onTapImgProfile(context);
                          },
                        ),
                        Padding(
                          padding: getPadding(left: 4, right: 2),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgAllnotes,
                                height: getVerticalSize(33),
                                width: getHorizontalSize(157),
                                margin: getMargin(
                                    top: 45, bottom: 11),
                              ),
                              GestureDetector(
                                onTap: () {
                                  onTapNew(context);
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin:
                                  getMargin(top: 45, bottom: 11),
                                  color: ColorConstant.blueGray200,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: ColorConstant.teal700,
                                      width: getHorizontalSize(1),
                                    ),
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Container(
                                    height: getSize(55),
                                    width: getSize(55),
                                    padding: getPadding(
                                      left: 3,
                                      top: 5,
                                      right: 3,
                                      bottom: 5,
                                    ),
                                    decoration: AppDecoration.outlineTeal700
                                        .copyWith(
                                        borderRadius:
                                        BorderRadiusStyle
                                            .roundedBorder8),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                          ImageConstant.imgNotes,
                                          height: getSize(44),
                                          width: getSize(44),
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  onTapNew(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createNotesScreen);
  }

  onTapImgProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}