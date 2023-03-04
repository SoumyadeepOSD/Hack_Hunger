import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FinalPage extends StatelessWidget {
  String email, password, name;

  FinalPage({required this.name, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Text(
            email,
            style: TextStyle(color: Colors.red),
          ),
          const SizedBox(height: 16),
          Text(
            password,
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
