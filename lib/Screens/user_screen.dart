import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/home_screen/widgets/drewer.dart';
import 'package:google_fonts/google_fonts.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          size.width > 650 ? const DrewerHome() : const SizedBox(),

          Text("Users",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Expanded(child: Container()),
          ElevatedButton.icon(onPressed: (){},icon:Icon(Icons.add) ,label:  Text("Add User"),)
        ],
      ),
    );
  }
}