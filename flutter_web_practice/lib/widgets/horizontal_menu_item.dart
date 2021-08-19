import 'package:flutter/material.dart';
import 'package:flutter_web_practice/constants/controllers.dart';
import 'package:get/get.dart';
import 'custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const HorizontalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () => onTap,
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? Colors.white.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  // Visibility(
                  //   visible: menuController.isHovering(itemName) ||
                  //       menuController.isActive(itemName),
                  //   maintainSize: true,
                  //   maintainAnimation: true,
                  //   maintainState: true,
                  //   child: Container(
                  //     width: 6,
                  //     height: 40,
                  //     color: dark,
                  //   ),
                  // ),
                  SizedBox(width: _width / 88),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: menuController.returnIconFor(itemName),
                  ),
                  if (!menuController.isActive(itemName))
                    Flexible(
                        child: CustomText(
                      text: itemName,
                      // color: menuController.isHovering(itemName)
                      //     ? dark
                      //     : Colors.white,
                      color: Colors.white,
                    ))
                  else
                    Flexible(
                        child: CustomText(
                      text: itemName,
                      color: Colors.white,
                      size: 18,
                      weight: FontWeight.bold,
                    ))
                ],
              ),
            )));
  }
}
