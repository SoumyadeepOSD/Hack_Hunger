import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Searching_Options/constants.dart';

class Harvest extends StatelessWidget {
  const Harvest({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerMoney = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Harvest More'),
            Icon(
              Icons.help,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/plant.jpg',
              height: 150,
              width: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter account number",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    icon: Icon(Icons.account_balance),
                    labelText: "Enter account number",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                controller: controllerMoney,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Account holder name",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    icon: Icon(Icons.account_box_rounded),
                    labelText: "Enter Account-Holder Name",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                controller: controllerMoney,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter amount in Rs.",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    icon: Icon(Icons.attach_money_outlined),
                    labelText: "Donate to farmers",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                controller: controllerMoney,
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(top: (40)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[900]),
                  child: Text(
                    'Proceed to Pay',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    print('Paid');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
