import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> selectedItems;
  CartScreen({Key? key, required this.selectedItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
          itemCount: selectedItems.length,
          itemBuilder: (context, index) {
            final item = selectedItems[index];
            return ListTile(
              title: Text(item['item']),
              subtitle: Text(item['price']),
            );
          },
        ),
      ),
    );
  }
}
