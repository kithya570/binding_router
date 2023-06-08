import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: currentIndex(context),
        onTap: (value) => onTap(value, context),
      ),
    );
  }

  onTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go("/");
        break;
      case 1:
        context.go("/settings");
        break;
    }
  }

  int currentIndex(BuildContext context) {
    final location = GoRouter.of(context).location;
    if (location.contains("/settings")) {
      return 1;
    } else {
      return 0;
    }
  }
}
