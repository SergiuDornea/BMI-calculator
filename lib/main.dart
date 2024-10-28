import 'package:flutter/material.dart';
import 'util.dart';
import 'theme.dart';
import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Aboreto", "Abel");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.dark(),
      home: const InputPage(title: 'BMI Calculator'),
    );
  }
}

