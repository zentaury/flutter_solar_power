import 'package:flutter/material.dart';

import 'package:solar_power/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Color primaryColor = Color(0xff00BF50);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: appRoutes(),
      title: 'Solar Power',
    );
  }
}
