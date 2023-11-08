import 'package:flutter/material.dart';
import 'package:newmovie/screens/splash_screen/splash_screen.dart';
import 'package:newmovie/shared/style/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
      },
      theme: MyTheme.appTheme,
    );
  }
}
