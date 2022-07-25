import 'package:flutter/material.dart';
import 'package:hyperpc_app/screens/home_screen/home_screen.dart';

import 'routing/routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(      ),
      onGenerateRoute: AppRouter.onGenerateRote,
       initialRoute: HomeScreen.routeName,
    );
  }
}

