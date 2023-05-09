import 'package:flutter/material.dart';
import 'package:travelogue_app/presentation/login_screen/login_screen.dart';
import 'package:travelogue_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:travelogue_app/presentation/notes_display_screen/notes_display_screen.dart';
import 'package:travelogue_app/presentation/create_notes_screen/create_notes_screen.dart';
import 'package:travelogue_app/presentation/upload_photo_screen/upload_photo_screen.dart';
import 'package:travelogue_app/presentation/resize_text_two_screen/edit_notes_screen.dart';
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

  static const String editNoteScreen = '/edit_notes_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    notesDisplayScreen: (context) => NotesDisplayScreen(),
    createNotesScreen: (context) => CreateNotesScreen(),
    uploadPhotoScreen: (context) => UploadPhotoScreen(),
    profileScreen: (context) => ProfileScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
