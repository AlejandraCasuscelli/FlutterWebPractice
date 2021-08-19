import 'package:flutter/material.dart';
import 'package:flutter_web_practice/constants/controllers.dart';
import 'package:get/get.dart';
import 'custom_text.dart';

class VertticalMenuItem extends StatelessWidget {
  final String itemName;
  final void Function() onTap;
  const VertticalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: onTap,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Visibility(
                  //   visible: menuController.isHovering(itemName) ||
                  //       menuController.isActive(itemName),
                  //   maintainSize: true,
                  //   maintainAnimation: true,
                  //   maintainState: true,
                  //   child: Container(
                  //     width: 6,
                  //     height: 62,
                  //     color: dark,
                  //   ),
                  // ),
                  SizedBox(width: _width / 88),
                  Padding(
                    // padding: const EdgeInsets.all(10),
                    padding: EdgeInsets.fromLTRB(1, 16, 10, 16),
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