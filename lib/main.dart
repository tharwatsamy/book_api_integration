import 'package:bookly/models/book_model.dart';
import 'package:bookly/utils/app_colors.dart';
import 'package:bookly/features/home/views/home_view.dart';
import 'package:bookly/features/splash/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() async {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kPrimaryColor,
      ),
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
