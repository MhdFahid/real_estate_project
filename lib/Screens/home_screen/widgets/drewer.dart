import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/home_screen/widgets/tab_menu_icon.dart';
import 'package:flutter_auth/constants.dart';

class DrewerHome extends StatelessWidget {
  const DrewerHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * 0.2,
      decoration: const BoxDecoration(gradient: gradient),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(children: [
              Text(
                'Details',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.015,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
            ]),
          ),
          CircleAvatar(
            radius: size.width * 0.049,
            backgroundColor: const Color.fromARGB(98, 184, 48, 48),
          ),
          const Text('Admin name'),
          const SizedBox(
            height: 20,
          ),
          const TabMenuIcon(
            title: 'HOME ',
            icon: Icons.home_outlined,
          ),
          const TabMenuIcon(
            title: 'Users',
            icon: Icons.verified_user_sharp,
          ),
          const TabMenuIcon(
            title: 'Product',
            icon: Icons.production_quantity_limits,
          ),
          const TabMenuIcon(
            title: 'Orders',
            icon: Icons.border_outer_outlined,
          ),
          const TabMenuIcon(
            title: 'Account',
            icon: Icons.account_box,
          ),
        ],
      ),
    );
  }
}
