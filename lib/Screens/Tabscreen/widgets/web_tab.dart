import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class WebScreenTab extends StatelessWidget {
  const WebScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            Container(
              height: size.height,
              width: size.width * 0.2,
              decoration: const BoxDecoration(gradient: gradient),
              child: const Column(
                children: [
                  Text('data'),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Color.fromARGB(17, 72, 71, 69),
                  height: size.height * 0.28,
                  width: size.width - size.width * 0.2,
                ),
              ],
            ),
          ],
        ),
        Positioned(
          left: size.width * 0.3,
          top: size.height * 0.18,
          // right: size.width * 0.2,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.20,
                width: size.width * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), gradient: gradient),
              ),
              // Spacer(),spa
              SizedBox(
                width: size.width * 0.08,
              ),
              Container(
                height: size.height * 0.20,
                width: size.width * 0.15,
                decoration: BoxDecoration(
                  gradient: gradient,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              // Spacer(),spa
              SizedBox(
                width: size.width * 0.08,
              ),
              Container(
                height: size.height * 0.20,
                width: size.width * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), gradient: gradient),
              ),

              SizedBox(
                width: size.width * 0.08,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
