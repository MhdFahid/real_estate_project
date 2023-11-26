import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("Users",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
                Expanded(child: Container()),
                ElevatedButton.icon(onPressed: (){},icon: ,)
              ],
            )
            
          ],
        ),
      ),
    );
  }
}