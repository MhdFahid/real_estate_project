import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentCenter extends StatelessWidget {
  const ContentCenter(
      {super.key,
      required this.title,
      required this.count,
      required this.icon,
      required this.color});
  final String title;
  final IconData icon;
  final Color color;
  final String count;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.260,
      width: size.width > 650 ? size.width * 0.15 : size.width * 0.5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: size.width > 100 ? 20 : 0,
            width: size.width > 100 ? 0 : 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.01),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: size.width > 700
                      ? size.width * 0.05342
                      : size.width * 0.1,
                ),
                SizedBox(
                  width: size.width > 700 ? size.width * 0.02 : null,
                  height: size.width > 700 ? null : size.width * 0.02,
                ),
                Text(
                  count,
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
