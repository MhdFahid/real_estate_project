import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Tabscreen/widgets/web_tab.dart';

import 'package:flutter_auth/responsive.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Responsive(
          desktop: WebScreenTab(),
          mobile: MobileScreenHome(),
        ),
      ),
    );
  }
}

class MobileScreenHome extends StatelessWidget {
  const MobileScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('mobile'));
  }
}
