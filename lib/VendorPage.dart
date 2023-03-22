import 'package:flutter/material.dart';
import 'package:zero_hunger/Constants/Vendors.dart';
import 'package:zero_hunger/VensorBuy.dart';

class VendorPage extends StatefulWidget {
  const VendorPage({super.key});

  @override
  State<VendorPage> createState() => _VendorPageState();
}

class _VendorPageState extends State<VendorPage> {
  TextEditingController controller = TextEditingController();
  List<Vendor> vendors = allVendors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Support Vendors'),
            Icon(Icons.help),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Find Items",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              onChanged: searchJob,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: vendors.length,
              itemBuilder: ((context, index) {
                final vendor = vendors[index];

                return ListTile(
                  leading: Image.network(
                    vendor.urlImage,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  trailing: Text(
                    'Vendor: ${vendor.VendorMan}',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  title: Text(
                    vendor.name,
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VendorBuy(vendor: vendor))),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  void searchJob(String query) {
    final suggestions = allVendors.where((vendor) {
      final jobTitle = vendor.name.toLowerCase();
      final input = query.toLowerCase();

      return jobTitle.contains(input);
    }).toList();

    setState(() {
      vendors = suggestions;
    });
  }
}
