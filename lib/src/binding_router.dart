
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'binding_builder.dart';

class BindingRouter<T extends GetxController> extends GoRoute {
  final Widget Function(BuildContext context, GoRouterState state)? page;
  final Bindings? binding;
  final void Function()? initState;
  final T? init;
  BindingRouter(
    this.init, {
    this.initState,
    required super.path,
    this.page,
    super.name,
    this.binding,
    super.parentNavigatorKey,
    super.redirect,
    super.routes = const <RouteBase>[],
  }) : super(builder: (a, n) {
          return BindBuilder(
              init: init,
              initState: (_) {
                initState?.call();
                binding?.dependencies();
              },
              builder: () => page!(a, n));
        });
}
