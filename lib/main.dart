import 'package:flutter/material.dart';
import 'Assets/sign_in_page_1.dart';
import 'Assets/profile_page_2.dart';
import 'Assets/plots_page_3.dart' as plots;
import 'Assets/site_page_4.dart' as site_diary;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SignInPage(),
        '/profile': (context) => const ProfileScreen(),
        '/plots': (context) => const plots.PlotScreen(),
        '/sitediary': (context) => const site_diary.SiteDiaryScreen(),
      },
    );
  }
}
