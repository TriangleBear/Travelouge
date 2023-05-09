import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';
import 'package:travelogue_app/presentation/login_screen/login_screen.dart';
import 'package:travelogue_app/widgets/app_bar/appbar_image.dart';
import 'package:travelogue_app/widgets/app_bar/custom_app_bar.dart';


class CreateNotesScreen extends StatefulWidget {
  @override
  State<CreateNotesScreen> createState() => _CreateNotesScreenState();
}
class _CreateNotesScreenState extends State<CreateNotesScreen> {
  TextEditingController _noteTitle = TextEditingController();
  TextEditingController _noteContent = TextEditingController();
  //TextEditingController _noteDate = TextEditingController();
  DateTime _selectedDateTime = DateTime.now();
  DateTime currentDate = DateTime.now();
  bool _isVisible = false;
  double _fontSize = 18;
  bool _isBold = false;
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
                  image: AssetImage(ImageConstant.imgWavesBackground),
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
                                          padding: getPadding(left: 10, top: 70, right: 13),
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
                                                  padding: getPadding(left:5),
                                                  child: SizedBox(
                                                    height: 45,
                                                    child: TextField(
                                                        controller: _noteTitle,
                                                        style: AppStyle.txtBoogalooRegular40,
                                                      decoration: InputDecoration(
                                                        hintText: "Title",
                                                        hintStyle: AppStyle.hintBoogalooRegular40,
                                                        border: InputBorder.none,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(left:5),
                                                  child: SizedBox(
                                                    height: 30,
                                                    child: DateTimePicker(
                                                      type: DateTimePickerType.date,
                                                      initialValue: '$currentDate',
                                                      firstDate: DateTime.now(),
                                                      lastDate: DateTime(2050),
                                                      onChanged: (value) {
                                                        // Extract day, month, and year values
                                                        DateTime selectedDate = DateTime.parse(value);
                                                        int day = selectedDate.day;
                                                        int month = selectedDate.month;
                                                        int year = selectedDate.year;

                                                        // Print selected date in desired format
                                                        print('${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/$year');
                                                      },
                                                      onSaved: (newValue) => _selectedDateTime = DateTime.parse(_selectedDateTime.toString()),
                                                      style: AppStyle.hintBoogalooRegular28,
                                                    )
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(left:5,),
                                                  child: SizedBox(
                                                    height: 650,
                                                    child: TextField(
                                                        controller: _noteContent,
                                                        keyboardType: TextInputType.multiline,
                                                        maxLines: null,
                                                        style:TextStyle(
                                                          fontWeight: _isBold?FontWeight.bold : FontWeight.normal,
                                                          fontSize: _fontSize,
                                                        ),
                                                      decoration: InputDecoration(
                                                        hintText: "Type your Text Here",
                                                        border: InputBorder.none,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        //RESIZE TEXT WIDGET
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Visibility(
                                            visible: _isVisible,
                                            child: Container(
                                              height: 150,
                                              padding: getPadding(
                                                  left: 17,
                                                  top: 6,
                                                  right: 17,
                                                  bottom: 6),
                                              decoration: AppDecoration
                                                  .outlineSliderTeal,
                                              child: Column(
                                                children: [
                                                  Text('Font Size: ${_fontSize.round()}',
                                                  style: AppStyle.txtBoogalooRegular28,),
                                                  Slider(value: _fontSize,
                                                      min:18.0,
                                                      max: 35.0,
                                                      onChanged: (newValue){
                                                        setState(() {
                                                          _fontSize = newValue;
                                                        });
                                                      },
                                                      activeColor: ColorConstant.teal900,
                                                      ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          _isBold = !_isBold;
                                                        });
                                                      },
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant.imgLists1,
                                                        height: getSize(35),
                                                        width: getSize(20),
                                                        alignment: Alignment.bottomLeft,
                                                        margin: getMargin(left: 45, bottom: 2),
                                                      ))
                                              ),
                                              Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapImgCamone(context);
                                                      },
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant.imgCam1,
                                                        height: getSize(50),
                                                        width: getSize(50),
                                                        margin: getMargin(top:805,left: 90),
                                                      ))
                                              ),
                                              Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          _isVisible = !_isVisible;
                                                        });
                                                      },
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant.imgAa,
                                                        height: getSize(40),
                                                        width: getSize(40),
                                                        margin: getMargin(top:805,left: 110),
                                                      )
                                                  )
                                              ),
                                            ],
                                          ),
                                        )

                                      ])
                              ))
                    ])

            )));
  }

  void onDateChangeCallBack(DateTime current){
    setState(() {
      _selectedDateTime = current;
    });
  }
  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('Notes'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Successfully Added!"),
        ],
      ),
      actions: <Widget>[
        new ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
          },
          child: const Text('Close'),
        ),
      ],
    );
  }

  onTapBackbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapSavebutton(BuildContext context) async {
    Map<String, dynamic> addNotes={
      "noteContent": _noteContent.text,
      "noteDate": _selectedDateTime.toString(),
      "noteTitle": _noteTitle.text,
      "isNoteBold": _isBold,
      "noteFontSize": _fontSize,
    };
    await FirebaseFirestore.instance.collection('users').doc(currentUserName).collection('userNotes').add(addNotes);
    showDialog(context: context, builder: (BuildContext context) => _buildPopupDialog(context));
    Navigator.pushNamed(context, AppRoutes.notesDisplayScreen);
  }

  onTapImgCamone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.uploadPhotoScreen);
  }
}