import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/AddPage/widget/data.dart';
import 'package:flutter_auth/Screens/AddPage/widget/dropdown_button_fields.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  RxString selectedCategory = 'Bulidings'.obs;
  RxList<String> selectedType = buildings;
  void updateList(List<String> newList) {
    selectedType.assignAll(newList);
  }
}

class AddItem extends StatelessWidget {
  AddItem({super.key});
  final MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    print(myController.selectedCategory.toString());
    return const Scaffold(
      body: AddPage(),
    );
  }
}

class Addd extends StatelessWidget {
  const Addd({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width * 0.03),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: size.width * 0.014,
              ),
              SizedBox(
                width: size.width * 0.14,
                child: Text(
                  'Choose Category',
                  style: TextStyle(fontSize: size.width * 0.01),
                  textAlign: TextAlign.start,
                ),
              ),
              Expanded(
                child: MyDropdownButtonFields(
                  selectedValue: 'Bulidings'.obs,
                  options: ['Bulidings', 'Lands'].obs,
                  onTap: () {},
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              SizedBox(
                width: 200,
                child: Text(
                  'Choose type',
                  style: TextStyle(fontSize: size.width * 0.01),
                  textAlign: TextAlign.start,
                ),
              ),
              Expanded(
                child: MyDropdownButtonFields(
                  selectedValue: 'Villas'.obs,
                  options: buildings,
                  onTap: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: size.width * 0.021),
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  // mainAxisExtent: 5,
                  mainAxisSpacing: 0.1,
                  childAspectRatio: 8),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    SizedBox(
                        height: size.width * 0.02,
                        width: size.width * 0.137,
                        child: Row(
                          children: [
                            Text(
                              style: TextStyle(fontSize: size.width * 0.01),
                              'Furnished',
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: MyDropdownButtonFields(
                          selectedValue: 'No'.obs,
                          options: ['Yes', 'No', 'Semi Furnished'].obs,
                          onTap: () {}),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Column(
        children: [
          SizedBox(
            height: size.width * 0.01,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.15,
                child: Text(
                  'Choose Category',
                  style: TextStyle(fontSize: size.width * 0.013),
                  textAlign: TextAlign.start,
                ),
              ),
              Expanded(
                child: Container(
                  width: size.width * 0.40,
                  child: MyDropdownButtonFields(
                    selectedValue: 'Bulidings'.obs,
                    options: ['Bulidings', 'Lands'].obs,
                    onTap: () {},
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              SizedBox(
                width: size.width * 0.15,
                child: Text(
                  'Choose type',
                  style: TextStyle(fontSize: size.width * 0.013),
                  textAlign: TextAlign.start,
                ),
              ),
              Expanded(
                child: Container(
                  width: size.width * 0.4,
                  child: MyDropdownButtonFields(
                    selectedValue: 'Villas'.obs,
                    options: buildings,
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: size.width * 0.02,
                  mainAxisSpacing: size.width * 0.01,
                  crossAxisCount: 2,
                  childAspectRatio: 9),
              children: [
                for (final item in villas)
                  Row(
                    children: [
                      Container(
                          width: size.width * 0.15,
                          child: Text(
                            item,
                            style: TextStyle(fontSize: size.width * 0.013),
                          )),
                      Expanded(
                        child: TextFieldt(
                          field1: item,
                        ),
                      ),
                    ],
                  ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.15,
                      child: Text(
                        'Furnished',
                        style: TextStyle(fontSize: size.width * 0.013),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: size.width * 0.40,
                        child: MyDropdownButtonFields(
                          selectedValue: 'No'.obs,
                          options: ['Yes', 'No', 'Semi furnished'].obs,
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldt extends StatelessWidget {
  const TextFieldt({
    super.key,
    required this.field1,
  });
  final String field1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TextFormField(
      decoration: InputDecoration(
        hintText: field1,
        hintStyle: TextStyle(fontSize: size.width * 0.013),
      ),
    );
  }
}
