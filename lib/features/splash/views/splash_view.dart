import 'package:bookly/features/home/views/home_view.dart';
import 'package:bookly/features/splash/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String id = 'splash_view';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigationControl();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  void navigationControl() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, HomeView.id);
      },
    );
  }
}
