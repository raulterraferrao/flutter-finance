import 'package:flutter/material.dart';
import 'package:flutter_finance/finance_theme.dart';
import 'package:flutter_finance/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      theme: FinanceTheme.light(),
      home: const Home(),
    );
  }
}
