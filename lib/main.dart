import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
// import '../../../../../OneDrive/Desktop/New folder (3)/Tabscreen/home_screen.dart';
import 'package:flutter_auth/Screens/home_screen/home_screen.dart';

import 'package:flutter_auth/constants.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCbWtXudIXxUczS3wHAqnGz16vJDwwnnHQ",
          authDomain: "aldar-app.firebaseapp.com",
          projectId: "aldar-app",
          storageBucket: "aldar-app.appspot.com",
          messagingSenderId: "680615711136",
          appId: "1:680615711136:web:00c28d12d3f263f2cb14c5",
          measurementId: "G-J2LDYTSSRE"));
  runApp(const MyApp());
}

class DropdownController extends GetxController {
  var selectedItem = ''.obs;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
          textTheme: TextTheme(bodyMedium: GoogleFonts.poppins()),
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: Colors.white,
              backgroundColor: kPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kPrimaryLightColor,
            iconColor: kPrimaryColor,
            prefixIconColor: kPrimaryColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
      // home: const LoginScreen(),
      home: const LoginScreen(),
    );
  }
}
