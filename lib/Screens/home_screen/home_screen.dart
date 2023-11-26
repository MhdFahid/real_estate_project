import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/home_screen/widgets/center_content.dart';
import 'package:flutter_auth/Screens/home_screen/widgets/drewer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          size.width > 650 ? const DrewerHome() : const SizedBox(),
          size.width > 650
              ? Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          padding: const EdgeInsets.all(12),
                          color: const Color(0xff062925),
                          width: double.infinity,
                          child: Row(
                            children: [
                              Text(
                                "Aldar",
                                style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                  onPressed: () async {
                                    await FirebaseAuth.instance
                                        .signOut()
                                        .whenComplete(() => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen(),
                                            )));
                                  },
                                  icon: const Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        Stack(
                          // alignment: Alignment.topCenter,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Container(
                                height: size.height,
                                width: double.infinity,
                              ),
                            ),
                            Container(
                              height: 200,
                              color: const Color.fromARGB(255, 207, 207, 207),
                            ),
                            Positioned(
                              left: size.width * 0.1,
                              top: size.width * 0.1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const ContentCenter(
                                    title: 'Property',
                                    count: "56",
                                    icon: Icons.bar_chart,
                                    color: Color(0xff630a10),
                                  ),
                                  SizedBox(width: size.width * 0.08),
                                  const ContentCenter(
                                    title: 'All Users',
                                    count: "22",
                                    icon: Icons.supervised_user_circle,
                                    color: Color(0xff062925),
                                  ),
                                  SizedBox(width: size.width * 0.08),
                                  const ContentCenter(
                                    title: 'Drafts',
                                    count: "41",
                                    icon: Icons.access_time,
                                    color: Color(0xff0c1345),
                                  ),
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
              //  mobile screeen
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
                            // Container(
                            //   height: size.width * 0.13,
                            //   width: double.infinity,
                            //   color: Color.fromARGB(133, 155, 155, 143),
                            // ),
                            Positioned(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.width * 0.08),
                                  const ContentCenter(
                                    title: 'Produts',
                                    count: "56",
                                    icon: Icons.ac_unit,
                                    color: Color(0xff630a10),
                                  ),
                                  SizedBox(height: size.width * 0.08),
                                  const ContentCenter(
                                    title: 'Users',
                                    count: "22",
                                    icon: Icons.supervised_user_circle,
                                    color: Color(0xff062925),
                                  ),
                                  SizedBox(height: size.width * 0.08),
                                  const ContentCenter(
                                    title: 'Order',
                                    count: "41",
                                    icon: Icons.online_prediction_rounded,
                                    color: Color(0xff0c1345),
                                  ),
                                  SizedBox(height: size.width * 0.08),
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
