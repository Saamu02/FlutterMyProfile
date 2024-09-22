import 'package:flutter/material.dart';
import 'package:my_profile/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: "/",
    );
  }
}
