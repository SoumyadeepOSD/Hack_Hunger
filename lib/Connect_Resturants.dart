import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Connect_Resturant extends StatelessWidget {
  Connect_Resturant({super.key});

  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerLocation = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();
  TextEditingController controllerOwner = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Collaboration'),
            Icon(Icons.help),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Name of Resturants",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    icon: Icon(Icons.restaurant),
                    labelText: "Name of Resturants",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                controller: controllerName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    icon: Icon(Icons.phone),
                    labelText: "Enter Phone Number",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                controller: controllerPhone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Location",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    icon: Icon(Icons.location_on_outlined),
                    labelText: "Enter Location",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                controller: controllerLocation,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter name",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  icon: Icon(Icons.contact_phone),
                  labelText: "Owner of Shop",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                controller: controllerOwner,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: (40)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[900]),
                child: Text(
                  'Register your Resturant',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.done_outline_rounded,
                                color: Colors.green,
                                weight: 10,
                              ),
                              Text(
                                "Registered Successfully",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          )),
                        ),
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
