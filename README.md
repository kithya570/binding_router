# Binding Router Plugin


Make implementation with go router and get x binding efficiency.

### Examples
Here are small examples that show you how to use binding router.

### Coding
```dart

 final router = GoRouter(routes: [
  BindingRouter(
    HomeController(),
    path: "/",
    page: (context, state) => const HomePage(),
  ),
  BindingRouter<TestController>(
    TestController(),
    binding: HomeBinding(),
    path: "/detail",
    page: (context, state) => const DetailPage(),
  ),
]);

```




