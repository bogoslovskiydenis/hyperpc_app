import 'package:flutter/material.dart';
import 'package:hyperpc_app/screens/componetns/header/header_container.dart';
import 'package:hyperpc_app/screens/componetns/header/mobile_menu/mobile_menu.dart';

import '../../const/constants.dart';
import '../componetns/body/body_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              child: DrawerHeader(
                child: Center(
                  child: Text(
                    "HYPERPC",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
              ),
              color: kPrimaryColor,
            ),
            Container(
              color: kPrimaryColor,
              child: Center(
                child: MobileMenu(),
              ),
            ),
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: const [
              HeaderContainer(),
              BodyContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
