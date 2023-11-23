import 'package:flutter/material.dart';

class TabMenuIcon extends StatelessWidget {
  const TabMenuIcon({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.white,
              size: size.width * 0.03,
            ),
            label: Padding(
              padding: const EdgeInsets.all(.0),
              child: Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
