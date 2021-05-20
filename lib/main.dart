import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:solar_power/routes/routes.dart';
import 'package:solar_power/services/electrodomestico_service.dart';
import 'package:solar_power/styles/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new ElectrodomesticoService()),
      ],
      child: MaterialApp(
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.electrodomesticos,
        routes: appRoutes(),
        title: 'Solar Power',
      ),
    );
  }
}
