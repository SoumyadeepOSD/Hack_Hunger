import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/Constants/JobGreetings.dart';

class JobForm extends StatefulWidget {
  const JobForm({super.key});

  @override
  State<JobForm> createState() => _JobFormState();
}

TextEditingController controllerName = TextEditingController();
TextEditingController controllerPhone = TextEditingController();
TextEditingController controllerAge = TextEditingController();
TextEditingController controllerSex = TextEditingController();
TextEditingController controllerLocation = TextEditingController();

class _JobFormState extends State<JobForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Application Form'),
            Icon(Icons.help),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                ),
                controller: controllerName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your age',
                ),
                controller: controllerAge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Gender',
                ),
                controller: controllerSex,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Phone Number',
                ),
                controller: controllerPhone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Location',
                ),
                controller: controllerLocation,
              ),
            ),
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
                onPressed: () {
                  if (controllerName.value != null &&
                      controllerAge.value != null &&
                      controllerSex.value != null &&
                      controllerPhone.value != null &&
                      controllerLocation.value != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JobGreetings()),
                    );
                  } else {
                    print('Hey MF');
                  }
                },
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}
