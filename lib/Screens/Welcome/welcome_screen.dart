import 'package:flutter/material.dart';

import '../../responsive.dart';
import 'components/login_signup_btn.dart';
import 'components/welcome_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Text('data'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              sSize.width > 920 ? const Desktop() : const MobileWelcomeScreen(),
        ),
      ),
    );
  }
}

// Welecome Mobile Screen
class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        WelcomeImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginAndSignupBtn(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

// Welecome Desktop screen
class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: WelcomeImage(),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 450,
                child: LoginAndSignupBtn(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
