import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'binding_builder.dart';

typedef PageBuilderCallback = CustomTransitionPage Function(
    BuildContext, GoRouterState);

class BindingRouter<T extends GetxController> extends GoRoute {
  final PageBuilderCallback builderPage;
  // final pageBuilder!.call(context, state)? pageBuilder!.call(context, state);
  final Bindings? binding;
  final void Function()? initState;
  final bool autoRemove;
  BindingRouter({
    this.initState,
    required this.builderPage,
    this.autoRemove = false,
    required super.path,
    super.name,
    this.binding,
    // this.pageBuilder!.call(context, state),
    super.parentNavigatorKey,
    super.redirect,
    super.routes = const <RouteBase>[],
  }) : super(pageBuilder: (BuildContext context, GoRouterState state) {
          // return a;
          debugPrint('Hello');
          return CustomTransitionPage(
              transitionDuration:
                  builderPage.call(context, state).transitionDuration,
              arguments: builderPage.call(context, state).arguments,
              barrierColor: builderPage.call(context, state).barrierColor,
              barrierDismissible:
                  builderPage.call(context, state).barrierDismissible,
              barrierLabel: builderPage.call(context, state).barrierLabel,
              fullscreenDialog:
                  builderPage.call(context, state).fullscreenDialog,
              key: builderPage.call(context, state).key,
              maintainState: builderPage.call(context, state).maintainState,
              name: builderPage.call(context, state).name,
              opaque: builderPage.call(context, state).opaque,
              restorationId: builderPage.call(context, state).restorationId,
              reverseTransitionDuration:
                  builderPage.call(context, state).reverseTransitionDuration,
              child: BindBuilder<T>(
                autoRemove: autoRemove,
                initState: (_) {},
                dispose: (_) {},
                binding: binding,
                builder: (_) => builderPage.call(context, state).child,
              ),
              transitionsBuilder:
                  builderPage.call(context, state).transitionsBuilder);
        }

            //     pageBuilder!.call(context, state)<void>(
            //   key: state.pageKey,
            //   transitionDuration: ,
            //   child: BindBuilder<T>(
            //     initState: (_) {},
            //     dispose: (_) {},
            //     binding: binding,
            //     builder: (_) => page!(context, state),
            //   ),
            //   transitionsBuilder:
            //       (context, animation, secondaryAnimation, child) =>
            //           FadeTransition(opacity: animation, child: child),
            // ),
            );
}
