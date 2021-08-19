import 'package:flutter/material.dart';
import 'package:flutter_web_practice/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = tipsPageDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case tipsPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case preguntasHabitosPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);
      case loginPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: Colors.white);
    // if (isActive(itemName)) return Icon(icon, size: 22, color: dark);
    return Icon(
      icon,
      // color: isHovering(itemName) ? dark : lightGrey,
      color: Colors.white,
    );
  }
}