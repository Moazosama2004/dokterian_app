import 'package:dokterian_app/views/home_view.dart';
import 'package:flutter/material.dart';

class DokterianApp extends StatelessWidget {
  const DokterianApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}
