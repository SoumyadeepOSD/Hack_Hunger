import 'package:flutter/material.dart';

class VendorBuy extends StatelessWidget {
  var vendor;

  VendorBuy({super.key, required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Vendor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              vendor.urlImage,
              width: double.infinity,
              height: 300,
              fit: BoxFit.fitHeight,
            ),
            Text('Food ${vendor.food}'),
            Text('Price ${vendor.price}'),
          ],
        ),
      ),
    );
  }
}
