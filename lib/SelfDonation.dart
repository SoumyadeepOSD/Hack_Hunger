import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zero_hunger/Constants/user.dart';
import 'package:zero_hunger/ImagePage.dart';
import 'package:zero_hunger/SelfDonation.dart';
import 'package:zero_hunger/main.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage_platform_interface/firebase_storage_platform_interface.dart';

import 'widgets/TextWidget.dart';

class SelfDonation extends StatefulWidget {
  SelfDonation({super.key});

  @override
  State<SelfDonation> createState() => _SelfDonationState();
}

class _SelfDonationState extends State<SelfDonation> {
  final controllerName = TextEditingController();

  final controllerEmail = TextEditingController();

  final controllerPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Self Donation"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            buildTextField(
                title: 'Name',
                controller: controllerName,
                hint: "Enter the name"),
            const SizedBox(
              height: 16,
            ),
            buildTextField(
                title: 'Email',
                controller: controllerEmail,
                hint: "Enter the email"),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 16,
            ),
            buildTextField(
                title: 'Number',
                controller: controllerPhone,
                hint: "Enter the phone number"),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[800],
                minimumSize: Size.fromHeight(50),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text('SEND'),
              onPressed: () {
                final user = User(
                    name: controllerName.text,
                    email: controllerEmail.text,
                    phone: controllerPhone.text,
                    reward: "0");
                createUser(user);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Stream<List<User>> readUsers() =>
    FirebaseFirestore.instance.collection('users').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());

Future createUser(User user) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc();
  user.id = docUser.id;

  final json = user.toJson();
  await docUser.set(json);
}

class User {
  String id;
  final String name;
  final String email;
  final String phone;
  final String reward;

  User(
      {this.id = '',
      required this.name,
      required this.email,
      required this.phone,
      required this.reward});

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phone': phone,
        'reward': reward
      };

  static User fromJson(Map<String, dynamic> json) => User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      reward: json['reward']);
}
