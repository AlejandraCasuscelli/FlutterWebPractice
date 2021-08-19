import 'package:flutter/material.dart';
import 'package:flutter_web_practice/constants/controllers.dart';
import 'package:flutter_web_practice/constants/style.dart';
import 'package:flutter_web_practice/helpers/responsiveness.dart';
import 'package:flutter_web_practice/routing/routes.dart';
import 'package:flutter_web_practice/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
            color: light,
            child: ListView(
              children: [
                if(ResponsiveWidget.isSmallScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: _width / 48),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Image.asset("assets/icons/logo.png", width: 100,),
                        ),
                        SizedBox(width: _width / 48),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                    Divider(color: lightGrey.withOpacity(.1), ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: sideMenuItemRoutes
                      .map((item) => SideMenuItem(
                          itemName: item.name,
                          onTap: () {
                            print(item.name);
                            if(item.route == loginPageRoute){
                              Get.offAllNamed(loginPageRoute);
                              menuController.changeActiveItemTo(tipsPageDisplayName);
                            }
                            if (!menuController.isActive(item.name)) {
                              menuController.changeActiveItemTo(item.name);
                              if(ResponsiveWidget.isSmallScreen(context))
                              Get.back();
                              navigationController.navigateTo(item.route);
                            }
                          }))
                      .toList(),
                )
              ],
            ),
          );
  }
}