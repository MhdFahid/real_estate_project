import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDropdownButtonFields extends StatelessWidget {
  // final RxString selectedValue = 'Bulidings'.obs;

  // final RxList<String> options = ['Bulidings', 'Lands'].obs;
  final RxString selectedValue;
  final void Function() onTap;
  final RxList<String> options;
  const MyDropdownButtonFields(
      {super.key,
      required this.selectedValue,
      required this.options,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DropdownButtonFormField<String>(
      value: selectedValue.value,
      onChanged: (String? newValue) {
        if (newValue != null) {
          selectedValue.value = newValue;
        }
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          onTap: onTap,
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize: size.width * 0.015),
          ),
        );
      }).toList(),
    );
  }
}
