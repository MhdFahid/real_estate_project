import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/home_screen/widgets/tab_menu_icon.dart';
import 'package:flutter_auth/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class DrewerHome extends StatelessWidget {
  const DrewerHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * 0.17,
      decoration: const BoxDecoration(color: Color(0xff062925)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'DashBoard',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    // fontSize: size.width * 0.015,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
            ]),
          ),
          CircleAvatar(
            radius: size.width * 0.049,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Admin name',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          const TabMenuIcon(
            title: 'Home',
            icon: Icons.home_filled,
          ),
          const TabMenuIcon(
            title: 'Search',
            icon: Icons.search_rounded,
          ),
          const TabMenuIcon(
            title: 'Requests',
            icon: Icons.real_estate_agent_sharp,
          ),
          const TabMenuIcon(
            title: 'Profile',
            icon: Icons.person,
          ),
          const TabMenuIcon(
            title: 'Settings',
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
