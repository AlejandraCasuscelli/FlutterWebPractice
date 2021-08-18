import 'package:flutter/material.dart';
import 'helpers/responsiveness.dart';
import 'widgets/large_screen.dart';
import 'widgets/small_screen.dart';
import 'widgets/side_menu.dart';
import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(child: SideMenu()),
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(), mediumScreen: LargeScreen(),),
    );
  }
}