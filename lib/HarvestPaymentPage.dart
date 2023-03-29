import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/HarvestFinal.dart';

class HarvestPayment extends StatefulWidget {
  HarvestPayment({super.key});

  @override
  State<HarvestPayment> createState() => _HarvestPaymentState();
}

class _HarvestPaymentState extends State<HarvestPayment> {
  int isload = 1;

  TextEditingController controllerCard = TextEditingController();

  TextEditingController controllerName = TextEditingController();

  TextEditingController controllerCvv = TextEditingController();

  TextEditingController controllerDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  'Your Payment Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CardField(
              type: 1,
              hint: "Card Number",
            ),
            CardField(
              type: 2,
              hint: "Your Full Name",
            ),
            CardField(
              type: 3,
              hint: "CVV",
            ),
            CardField(
              type: 4,
              hint: "MM/YY",
            ),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                backgroundColor: Colors.green,
              ),
              child: isload == 2
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text('Please Wait...'),
                      ],
                    )
                  : Text("Pay"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HarvestFinal()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardField extends StatelessWidget {
  int type;
  String hint;
  CardField({
    super.key,
    required this.type,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: type == 1
            ? TextInputType.number
            : type == 2
                ? TextInputType.name
                : type == 3
                    ? TextInputType.number
                    : TextInputType.datetime,
        decoration: InputDecoration(
          prefixIcon: Icon(type == 1
              ? Icons.credit_card_rounded
              : type == 2
                  ? Icons.perm_contact_cal
                  : type == 3
                      ? Icons.closed_caption_off_sharp
                      : Icons.date_range_outlined),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
