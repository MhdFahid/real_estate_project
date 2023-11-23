import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/home_screen/widgets/center_content.dart';
import 'package:flutter_auth/Screens/home_screen/widgets/drewer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: size.width < 650
          ? AppBar(
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            )
          : null,
      body: Row(
        children: [
          size.width > 650 ? const DrewerHome() : const SizedBox(),
          size.width > 650
              ? Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Container(
                                height: size.height,
                                width: double.infinity,
                              ),
                            ),
                            Container(
                              height: size.width * 0.13,
                              width: double.infinity,
                              color: Color.fromARGB(133, 155, 155, 143),
                            ),
                            Positioned(
                              left: size.width * 0.1,
                              top: size.width * 0.1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const ContentCenter(
                                      title: 'Produts', icon: Icons.ac_unit),
                                  SizedBox(width: size.width * 0.08),
                                  const ContentCenter(
                                      title: 'Users',
                                      icon: Icons.supervised_user_circle),
                                  SizedBox(width: size.width * 0.08),
                                  const ContentCenter(
                                      title: 'Order',
                                      icon: Icons.online_prediction_rounded),
                                  SizedBox(width: size.width * 0.08),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Container(
                                height: size.height,
                                width: double.infinity,
                              ),
                            ),
                            Container(
                              height: size.width * 0.13,
                              width: double.infinity,
                              color: Color.fromARGB(133, 155, 155, 143),
                            ),
                            Positioned(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const ContentCenter(
                                      title: 'Produts', icon: Icons.ac_unit),
                                  SizedBox(width: size.width * 0.08),
                                  const ContentCenter(
                                      title: 'Users',
                                      icon: Icons.supervised_user_circle),
                                  SizedBox(width: size.width * 0.08),
                                  const ContentCenter(
                                      title: 'Order',
                                      icon: Icons.online_prediction_rounded),
                                  SizedBox(width: size.width * 0.08),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
