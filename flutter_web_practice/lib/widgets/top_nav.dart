import 'package:flutter/material.dart';
import 'package:flutter_web_practice/constants/style.dart';
import 'package:flutter_web_practice/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ?

          // Padding(padding: const EdgeInsets.only(left: 16), child:
          //  FittedBox(
          //   child: Image.asset('assets/icons/logoCorazones.png'),
          //   fit: BoxFit.fill,
          // )
          // ,)
          //TODO: Ver problema al agrandar logo
          Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    "assets/icons/logoCorazones.png",
                    width: 28,
                  ),
                ),
                // Container(width: 10),
                // Image.asset(
                //     "assets/icons/logoCorazones.png",
                //     width: 60,
                //   ),
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {
                key.currentState!.openDrawer();
              }),
      title: Container(
        child: Row(
          children: [
            // Visibility(
            //   visible: !ResponsiveWidget.isSmallScreen(context),
            //   child: Image.asset(
            //     "assets/icons/logoCorazones.png",
            //     width: 80,
            //   ),
            // ),
            // Visibility(
            //     visible: !ResponsiveWidget.isSmallScreen(context),
            //     child: CustomText(
            //       text: "Console",
            //       color: lightGrey,
            //       size: 20,
            //       weight: FontWeight.bold,
            //     )),
            Expanded(child: Container()),
            IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {}),
            Container(
              width: 1,
              height: 22,
              color: Colors.white,
            ),
            SizedBox(
              width: 24,
            ),
            CustomText(
              text: "Pepito Grillo",
              color: Colors.white,
            ),
            SizedBox(
              width: 16,
            )
          ],
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: light,
    );
