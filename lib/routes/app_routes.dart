import 'package:flutter/material.dart';
import 'package:travelogue_app/presentation/login_screen/login_screen.dart';
import 'package:travelogue_app/presentation/recog_login_screen/recog_login_screen.dart';
import 'package:travelogue_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:travelogue_app/presentation/recog_sign_up_one_screen/recog_sign_up_one_screen.dart';
import 'package:travelogue_app/presentation/recog_sign_up_screen/recog_sign_up_screen.dart';
import 'package:travelogue_app/presentation/notes_display_screen/notes_display_screen.dart';
import 'package:travelogue_app/presentation/create_notes_screen/create_notes_screen.dart';
import 'package:travelogue_app/presentation/upload_photo_screen/upload_photo_screen.dart';
import 'package:travelogue_app/presentation/upload_photo_two_screen/upload_photo_two_screen.dart';
import 'package:travelogue_app/presentation/add_bullets_screen/add_bullets_screen.dart';
import 'package:travelogue_app/presentation/resize_text_screen/resize_text_screen.dart';
import 'package:travelogue_app/presentation/resize_text_two_screen/resize_text_two_screen.dart';
import 'package:travelogue_app/presentation/resized_text_screen/resized_text_screen.dart';
import 'package:travelogue_app/presentation/profile_screen/profile_screen.dart';
import 'package:travelogue_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:travelogue_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String recogLoginScreen = '/recog_login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String recogSignUpOneScreen = '/recog_sign_up_one_screen';

  static const String recogSignUpScreen = '/recog_sign_up_screen';

  static const String notesDisplayScreen = '/notes_display_screen';

  static const String createNotesScreen = '/create_notes_screen';

  static const String uploadPhotoScreen = '/upload_photo_screen';

  static const String uploadPhotoTwoScreen = '/upload_photo_two_screen';

  static const String addBulletsScreen = '/add_bullets_screen';

  static const String resizeTextScreen = '/resize_text_screen';

  static const String resizeTextTwoScreen = '/resize_text_two_screen';

  static const String resizedTextScreen = '/resized_text_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    recogLoginScreen: (context) => RecogLoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    recogSignUpOneScreen: (context) => RecogSignUpOneScreen(),
    recogSignUpScreen: (context) => RecogSignUpScreen(),
    notesDisplayScreen: (context) => NotesDisplayScreen(),
    createNotesScreen: (context) => CreateNotesScreen(),
    uploadPhotoScreen: (context) => UploadPhotoScreen(),
    uploadPhotoTwoScreen: (context) => UploadPhotoTwoScreen(),
    addBulletsScreen: (context) => AddBulletsScreen(),
    resizeTextScreen: (context) => ResizeTextScreen(),
    resizeTextTwoScreen: (context) => ResizeTextTwoScreen(),
    resizedTextScreen: (context) => ResizedTextScreen(),
    profileScreen: (context) => ProfileScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
