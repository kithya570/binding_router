import 'package:binding_router/binding_router.dart';
import 'package:example/binding/binding.dart';
import 'package:example/bottom_nav.dart';
import 'package:example/controller/controller.dart';
import 'package:example/detail.dart';
import 'package:example/home.dart';
import 'package:example/setting.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

final router = GoRouter(initialLocation: "/", routes: [
  BindingShellRouter<BottomNavController>(
      binding: BottomNavBinding(),
      shellBuilder: (context, state, child) => BottomNav(child: child),
      routes: [
        BindingRouter<HomeCon>(
          binding: HomeBinding(),
          path: '/',
          builderPage: (context, state) =>
              const NoTransitionPage(child: HomeScreen()),
          routes: [
            BindingRouter<DetailCon>(
              binding: DetailBinding(),
              path: 'detail',
              builderPage: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                transitionDuration: const Duration(milliseconds: 500),
                child: const DetailPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(opacity: animation, child: child),
              ),
            ),
          ],
        ),
        BindingRouter<SettingCon>(
          binding: SettingBinding(),
          path: '/settings',
          builderPage: (context, state) =>
              const NoTransitionPage(child: SettingScreen()),
        ),
      ]),
]);
