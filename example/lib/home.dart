import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'controller/controller.dart';

class HomeScreen extends GetView<HomeCon> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: const Text(""),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/detail");
        },
        child: const Icon(
          Icons.arrow_forward,
        ),
      ),
    );
  }
}
