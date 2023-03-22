import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zero_hunger/SelfDonation.dart';
import 'package:zero_hunger/main.dart';

class NgoDonation extends StatelessWidget {
  NgoDonation({super.key});

  final controllerTo = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();
  final controllerVeg = TextEditingController();
  final controllerName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("NGO Donation"), Icon(Icons.help)],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            buildTextField(
                title: 'To',
                controller: controllerTo,
                hint: "Enter email of NGO"),
            const SizedBox(
              height: 16,
            ),
            buildTextField(
                title: 'NGO Name',
                controller: controllerName,
                hint: "Who is your target NGO?"),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 16,
            ),
            buildTextField(
                title: 'Veg/Non-Veg',
                controller: controllerVeg,
                hint: "Your food is veg or non-veg?"),
            const SizedBox(
              height: 16,
            ),
            buildTextField(
              title: "Item's name",
              controller: controllerMessage,
              hint: "Enter the name of your food",
              maxLines: 8,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[800],
                minimumSize: Size.fromHeight(50),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text('SEND'),
              onPressed: () => lanuchEmail(
                toEmail: controllerTo.text,
                name: controllerName.text,
                message: controllerMessage.text,
                veg: controllerVeg.text,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField({
    required String title,
    required TextEditingController controller,
    required String hint,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue[900]),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              fillColor: Colors.white,
              hintText: hint,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Future lanuchEmail(
      {required String toEmail,
      required String name,
      required String message,
      required String veg}) async {
    final url =
        'mailto:$toEmail?subject="Enquiry regarding the Food donation"&body=${Uri.encodeFull("\nDonation for " + veg + "\nName of food is " + message)}';

    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    }
  }
}
