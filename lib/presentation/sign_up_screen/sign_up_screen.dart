import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_app/core/app_export.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _showPassword = false; // initial value of obscureText
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepOrange100,
            body: SingleChildScrollView(
            child:Container(
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
                          imagePath: ImageConstant.imgLogin69x195,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(top: 18),
                          onTap: () {
                            onTapImgLogin(context);
                          }),
                      CustomImageView(
                          imagePath: ImageConstant.imgSignup69x195,
                          height: getVerticalSize(69),
                          width: getHorizontalSize(195),
                          alignment: Alignment.centerRight,
                          margin: getMargin(top: 6)),
                      Container(
                          margin: getMargin(left: 35, right: 37, top:10),
                          child:  Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                //First name input box
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18),
                                        child: Text("First Name",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold23))),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: SizedBox(
                                    height: 35.0,
                                    width: 300.0,
                                    child: TextField(
                                      obscureText: false,
                                      controller: _firstnameController,
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
                                //Last Name input Box
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18),
                                        child: Text("Last Name",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold23))),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: SizedBox(
                                    height: 35.0,
                                    width: 300.0,
                                    child: TextField(
                                      obscureText: false,
                                      controller: _lastnameController,
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
                                // Username input Box
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18),
                                        child: Text("Username",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold23))),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: SizedBox(
                                    height: 35.0,
                                    width: 300.0,
                                    child: TextField(
                                      obscureText: false,
                                      controller: _usernameController,
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
                                // Email input Box
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18),
                                        child: Text("Email",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold23))),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: SizedBox(
                                    height: 35.0,
                                    width: 300.0,
                                    child: TextField(
                                      obscureText: false,
                                      controller: _emailController,
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
                                // Email input Box
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 18),
                                        child: Text("Password",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProSemiBold23))),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: SizedBox(
                                    height: 35.0,
                                    width: 300.0,
                                    child: TextField(
                                      obscureText: !_showPassword,
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              _showPassword ? Icons.visibility : Icons.visibility_off,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                _showPassword = _showPassword; // toggle the value
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
                          ])),


                      Container(
                          height: getVerticalSize(185),
                          width: double.maxFinite,
                          margin: getMargin(top:6),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgWavecircle,
                                    height: getVerticalSize(185),
                                    width: getHorizontalSize(187),
                                    alignment: Alignment.centerLeft),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                    )),
                                CustomImageView(
                                    imagePath: ImageConstant.imgSignupbutton,
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(132),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 20, right: 53),
                                    onTap: () {
                                      Map<String, String> addUser={
                                        "email": _emailController.text,
                                        "firstName": _firstnameController.text,
                                        "lastName": _lastnameController.text,
                                        "userName": _usernameController.text,
                                        "userPass": _passwordController.text,
                                      };
                                      FirebaseFirestore.instance.collection('users').add(addUser);
                                      showDialog(context: context, builder: (BuildContext context) => _buildPopupDialog(context));
                                    })
                              ]))

                    ])))));

  }
  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('Popup example'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Signup Successful"),
        ],
      ),
      actions: <Widget>[
        new ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, AppRoutes.loginScreen);
          },
          child: const Text('Close'),
        ),
      ],
    );
  }



  onTapImgLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
  void onTapImgSignupbutton() async {
    Navigator.pushNamed(context, AppRoutes.appNavigationScreen);
  }
}

