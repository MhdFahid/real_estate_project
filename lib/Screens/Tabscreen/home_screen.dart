import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Tabscreen/widgets/center_content.dart';
import 'package:flutter_auth/Screens/Tabscreen/widgets/drewer.dart';
import 'package:flutter_auth/Screens/Tabscreen/widgets/tab_menu_icon.dart';
import 'package:flutter_auth/constants.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                size.width > 700 ? const DrewerHome() : Container(),
                Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(17, 72, 71, 69),
                      height: size.height * 0.28,
                      width: size.width > 700
                          ? size.width - size.width * 0.2
                          : size.width,
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: size.width > 700 ? size.width * 0.3 : 0,
              top: size.width > 700 ? size.width * 0.082 : size.width * 0.2,
              right: size.width > 700 ? null : 0,
              bottom: size.width > 700 ? null : 0,
              child: size.width > 700
                  ? Row(
                      children: [
                        const ContentCenter(
                            title: 'Produts', icon: Icons.ac_unit),
                        SizedBox(width: size.width * 0.08),
                        const ContentCenter(
                            title: 'Users', icon: Icons.supervised_user_circle),
                        SizedBox(width: size.width * 0.08),
                        const ContentCenter(
                            title: 'Order',
                            icon: Icons.online_prediction_rounded),
                        SizedBox(width: size.width * 0.08),
                      ],
                    )
                  : Column(children: [
                      const ContentCenter(
                          title: 'Produts', icon: Icons.ac_unit),
                      SizedBox(height: size.width * 0.08),
                      const ContentCenter(
                          title: 'Users', icon: Icons.supervised_user_circle),
                      SizedBox(height: size.width * 0.08),
                      const ContentCenter(
                          title: 'Order',
                          icon: Icons.online_prediction_rounded),
                      SizedBox(height: size.width * 0.08),
                    ]),
            ),
          ],
        ),
      ),
    );
  }
}
