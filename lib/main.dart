import 'package:flutter/material.dart';
import 'package:nav_app/navigation/register_page.dart';
import 'package:provider/provider.dart';

import 'nav_part2/app_router.dart';
import 'nav_part2/auth_provider.dart';
import 'nav_part2/pages_names.dart';
import 'nav_part2/screen1.dart';
import 'nav_part2/screen2.dart';
import 'navigation/profile_page.dart';
import 'navigation/route_page.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) {
        return AuthProvider();
      })
    ], child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppRouter.navKey,
      initialRoute: '/',
      routes: {
        RoutePage.registerPage: (context) => const RegistrationPage(),
        RoutePage.profilePage: (context) => ProfilePage(),
        PagesNames.screen1Name: (context) => const Screen1(),
        PagesNames.screen2Name: (context) => const Screen2(),
      },
      // home: const Screen1(),
    );
  }
}
