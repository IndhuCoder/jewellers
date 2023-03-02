import 'package:flutter/material.dart';
import 'package:metals_details/Dashboard.dart';

import 'SampleClass.dart';






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const layout(),
        //home: MainView(),

    );
  }
}

