import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'binding_builder.dart';

class BindingShellRouter<T extends GetxController> extends ShellRoute {
  final Widget Function(BuildContext, GoRouterState, Widget) shellBuilder;
  final bool autoRemove;
  final Bindings? binding;
  BindingShellRouter(
      {required this.shellBuilder,
      this.binding,
      this.autoRemove = false,
      super.navigatorKey,
      super.routes,
      super.observers,
      super.restorationScopeId})
      : super(
          builder: (c, s, w) => BindBuilder<T>(
            autoRemove: autoRemove,
            initState: (_) {},
            dispose: (_) {},
            binding: binding,
            builder: (_) => shellBuilder(c, s, w),
          ),
        );
}
