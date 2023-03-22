import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextWidget extends StatelessWidget {
  TextWidget({super.key, required this.text, required this.fontSize});
  String text;
  double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 6),
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              backgroundColor: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
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
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
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
