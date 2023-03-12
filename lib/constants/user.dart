import 'package:flutter/material.dart';

class Donator {
  final String name;
  final String number;

  Donator(this.name, this.number);

  static fromJson(Map<String, dynamic> data) {}
}

final allUsers = [
  Donator('John', '8910902078'),
  Donator('Johny', '8910968778'),
  Donator('Johna', '8910989778'),
  Donator('Johnm', '8910977778'),
  Donator('Johny', '8910970898'),
  Donator('Jahn', '8910960698'),

];
