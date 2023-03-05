import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zero_hunger/FinalPage.dart';
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
        title: Text("NGO Donation"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            buildTextField(title: 'To', controller: controllerTo),
            const SizedBox(
              height: 16,
            ),
            buildTextField(title: 'NGO Name', controller: controllerName),
            const SizedBox(
              height: 16,
            ),
            buildTextField(title: 'Subject', controller: controllerSubject),
            const SizedBox(
              height: 16,
            ),
            buildTextField(title: 'Veg/Non-Veg', controller: controllerVeg),
            const SizedBox(
              height: 16,
            ),
            buildTextField(
              title: "Item's name",
              controller: controllerMessage,
              maxLines: 8,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text('SEND'),
              onPressed: () => lanuchEmail(
                toEmail: controllerTo.text,
                name: controllerName.text,
                subject: controllerSubject.text,
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
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Future lanuchEmail(
      {required String toEmail,
      required String name,
      required String subject,
      required String message,
      required String veg}) async {
    final url =
        'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull("\nDonation for " + veg + "\nName of food is " + message)}';

    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    }
  }
}
