import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

String currentUserName = '';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _showPassword = true; // initial value of obscureText
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: ColorConstant.teal100,
        body: SingleChildScrollView(
        child: Container(
        width: double.maxFinite,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgTravelogue,
                          height: getVerticalSize(62),
                          width: getHorizontalSize(324),
                          margin: getMargin(top: 30)),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogin,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(top: 18)),
                      CustomImageView(
                          imagePath: ImageConstant.imgSignup,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerRight,
                          margin: getMargin(top: 6),
                          onTap: () {
                            onTapImgSignup(context);
                          }),
                      Container(
                          margin: getMargin(left: 40, top: 13, right: 37),
                          padding: getPadding(top: 19, bottom: 10),
                          decoration: AppDecoration.outlineTeal300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder27),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18, top: 20),
                                        child: Text("Enter Username",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold21))),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SizedBox(
                                    height: 34.0,
                                    width: 300.0,

                                    child: TextField(
                                      obscureText: false,
                                      controller: _usernameController,
                                      onChanged: (value){
                                        currentUserName = value;
                                      },
                                      decoration: InputDecoration(
                                          fillColor: Color(0xff4c9c9e),
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(getHorizontalSize(9)),
                                            borderSide: BorderSide.none, // Removes the border color
                                          )
                                      ),
                                    ),
                                  ),
                                ),

                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18, top: 20),
                                        child: Text("Enter Password",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold21))),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: SizedBox(
                                    height: 34.0,
                                    width: 300.0,
                                    child: TextField(
                                      obscureText: _showPassword,
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              _showPassword ? Icons.visibility_off : Icons.visibility,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                _showPassword = !_showPassword; // toggle the value
                                              });},
                                          ),
                                          fillColor: Color(0xff4c9c9e),
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(getHorizontalSize(9)),
                                            borderSide: BorderSide.none, // Removes the border color
                                          )
                                      ),

                                    ),
                                  ),
                                ),
                                CustomImageView(
                                    imagePath: ImageConstant.imgLoginbutton,
                                    height: getVerticalSize(26),
                                    width: getHorizontalSize(114),
                                    margin: getMargin(top: 20, bottom: 20),
                                    onTap: () {
                                      onTapImgLoginbutton(context);
                                    }),
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgWave1,
                          height: getVerticalSize(226),
                          width: getHorizontalSize(360),
                          margin:getMargin(top: 20))
                    ])))));
  }
  Widget _buildPopupDialogError(BuildContext context) {
    return new AlertDialog(
      title: const Text('Error'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Wrong user or password"),
        ],
      ),
      actions: <Widget>[
        new ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.loginScreen);
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
  onTapImgSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  void onTapImgLoginbutton(BuildContext context) async {
    final QuerySnapshot = await FirebaseFirestore.instance.collection('users').where('userName', isEqualTo: _usernameController.text).get();
    currentUserName = _usernameController.text;
    if(QuerySnapshot.docs.isNotEmpty){
      final userDoc = QuerySnapshot.docs.first;
      final userPass = userDoc.get('userPass');

      if(userPass != _passwordController.text){
        _buildPopupDialogError(context);
      } else {
        print('Successfully Logged in');
        Navigator.pushNamed(context,  AppRoutes.notesDisplayScreen);
      }
    } else {
      _buildPopupDialogError(context);
    }


  }


}
