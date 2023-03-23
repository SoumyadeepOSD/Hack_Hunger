import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class VendorBuy extends StatelessWidget {
  var vendor;

  VendorBuy({super.key, required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Call to Vendors'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image.network(
                vendor.urlImage,
                width: double.infinity,
                height: 300,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${vendor.name}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '${vendor.price}₹/kg',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Seller: ${vendor.VendorMan}',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '${vendor.food}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Phone: ${vendor.phone}'),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          padding: EdgeInsets.only(
                            left: 50,
                            right: 50,
                          )),
                      onPressed: () async {
                        launch('tel://$vendor.phone');

                        await FlutterPhoneDirectCaller.callNumber(vendor.phone);
                      },
                      child: Text(
                        'Call to Vendor',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
