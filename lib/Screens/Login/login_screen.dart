import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/login_form.dart';
import 'components/login_screen_top_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child:
              sSize.width > 920 ? WebLoginScreen() : const MobileLoginScreen(),
        ),
      ),
    ));
  }
}

// Web Login Screen
class WebLoginScreen extends StatelessWidget {
  WebLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded(
        //   child: LoginScreenTopImage(),
        // ),
        Expanded(
            child: Row(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                    SizedBox(
                      // height: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset(
                        "assets/images/login.png",

                        // height: 200,
                      ),
                    ),
                    Container(
                      color: Color(0xff062925),
                      height: 250,
                      child: TextLiquidFill(
                        waveColor: Colors.white,
                        boxBackgroundColor: Color(0xff062925),
                        textStyle: GoogleFonts.poppins(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                        boxHeight: MediaQuery.of(context).size.width * 0.1,
                        text: 'ALDAR',
                      ),
                    ),
                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.5,
              color: Color(0xff062925),
            ),
          ],
        )),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 450,
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Mobile Login Screen
class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                SizedBox(
                  // height: MediaQuery.of(context).size.width * 0.2,
                  child: Image.asset(
                    "assets/images/login.png",

                    // height: 200,
                  ),
                ),
                Container(
                  color: Color(0xff062925),
                  height: 250,
                  child: TextLiquidFill(
                    waveColor: Colors.white,
                    boxBackgroundColor: Color(0xff062925),
                    textStyle: GoogleFonts.poppins(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                    boxHeight: sSize.width < 450
                        ? MediaQuery.of(context).size.width * 0.2
                        : MediaQuery.of(context).size.width * 0.1,
                    text: 'ALDAR',
                  ),
                ),
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff062925),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: LoginForm(),
        ),
      ],
    );
  }
}
