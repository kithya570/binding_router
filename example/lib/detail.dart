import 'package:example/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class DetailPage extends StatelessWidget {
//   const DetailPage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<DetailCon>(
//       init: DetailCon(),
//       initState: (state) {

//       },
//       builder: (controller) => Scaffold(
//         appBar: AppBar(
//           title: const Text('DetailPage'),
//         ),
//         body: Obx(() => Text(controller.addToCart.value.toString())),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             controller.addToCart.value++;
//           },
//           child: const Icon(Icons.add_shopping_cart),
//         ),
//       ),
//     );
//   }
// }
class DetailPage extends GetView<DetailCon> {
  const DetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailPage'),
      ),
      body: Obx(() => Text(controller.addToCart.value.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addToCart.value++;
        },
        child: const Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
