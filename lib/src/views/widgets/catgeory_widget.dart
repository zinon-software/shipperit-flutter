import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/trip_controller.dart';
import '../../models/category.dart';
import '../utilities/themeColors.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  final selectedCategory;
  const CategoryWidget(
      {Key? key, required this.category, this.selectedCategory})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SearshController appState = Get.find();

    final isSelected = selectedCategory == category.categoryId;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          appState.updateCategory(category);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 110,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(18.0),
            border: isSelected
                ? Border.all(
                    color: const Color.fromARGB(255, 179, 175, 175),
                  )
                : null),
        child: Center(
          child: Text(
            category.name!,
            style: isSelected
                ? TextStyle(color: ThemeColors.green, fontSize: 12)
                : const TextStyle(color: Colors.white, fontSize: 10),
          ),
        ),
      ),
    );
  }
}
