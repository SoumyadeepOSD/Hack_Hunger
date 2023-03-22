import 'package:flutter/material.dart';
import 'location_search_screen.dart';
import 'theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
      theme: lightTheme(context),
      home: const SearchLocationScreen(),
    );
  }
}
