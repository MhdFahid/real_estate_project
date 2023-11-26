import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Auth/signin.dart';
// import '../../../../../../../../OneDrive/Desktop/New folder (3)/Tabscreen/home_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:get/get.dart';

import '../../../components/already_have_an_account_acheck.dart';

import '../../Signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginFormcontroller loginformcontroller = Get.put(LoginFormcontroller());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Padding(
        padding: size.width > 1000
            ? EdgeInsets.all(0)
            : size.width < 1000 && size.width > 500
                ? EdgeInsets.symmetric(horizontal: 90, vertical: 20)
                : EdgeInsets.all(0),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              cursorColor: kPrimaryColor,
              onSaved: (email) {},
              decoration: InputDecoration(
                hintText: "Your email",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email';
                }
                if (!loginformcontroller.validateEmail(value!)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: Obx(
                () => TextFormField(
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  obscureText: loginformcontroller.visibilitypass.value,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    hintText: "Your password",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(defaultPadding),
                      child: Icon(Icons.lock),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: () {
                            loginformcontroller.visibilitypass.value =
                                !loginformcontroller.visibilitypass.value;
                          },
                          icon: Icon(Icons.visibility)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }

                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  String message = await Authentication()
                      .signIn(emailController.text, passwordController.text);
                  if (message == "invalid-login-credentials") {
                    AnimatedSnackBar.rectangle(
                      'Incorrect Password',
                      'password entered is wrong!!!',
                      type: AnimatedSnackBarType.error,
                      brightness: Brightness.light,
                      mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                      desktopSnackBarPosition:
                          DesktopSnackBarPosition.bottomRight,
                    ).show(
                      context,
                    );
                  } else {
                    
                    AnimatedSnackBar.rectangle(
                            'Success', 'Login successfull, welcome Admin!!',
                            type: AnimatedSnackBarType.success,
                            brightness: Brightness.light,
                            mobileSnackBarPosition: MobileSnackBarPosition.bottom,


                            desktopSnackBarPosition:
                                DesktopSnackBarPosition.bottomRight)
                        .show(
                      context,
                    );
                  }
                }
              },
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
            const SizedBox(height: defaultPadding),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LoginFormcontroller extends GetxController {
  RxBool visibilitypass = true.obs;
  bool validateEmail(String email) {
    // Regular expression for basic email validation
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    // Check if the provided email matches the regex pattern
    return emailRegex.hasMatch(email);
  }
}
