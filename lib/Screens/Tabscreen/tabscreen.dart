import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Tabscreen/widgets/web_tab.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child:
            sSize.width > 920 ? const WebScreenTab() : const MobileScreenHome(),
      ),
    );
  }
}

class MobileScreenHome extends StatelessWidget {
  const MobileScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('mobile'));
  }
}
