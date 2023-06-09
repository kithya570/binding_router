# Binding Router Plugin


Make implementation with go router and get x binding efficiency.

## Examples
Here are small examples that show you how to use binding router.

### Coding

### BindingShellRouter with BindingRouter
```dart
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
```




