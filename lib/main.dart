import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/home_page.dart';
import 'package:nubank_clone/themes/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Nubank',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: kPrimaryColor,
        ),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              secondary: kPrimaryColor,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
