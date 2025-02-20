import 'package:flutter/material.dart';
import 'package:flutter_provider/model_classes/Student.dart';
import 'package:flutter_provider/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MultiProvider(providers: [
        ChangeNotifierProvider<Student>(create: (context) => Student(name: 'John Doe', rollNo: 1, fee: 1000.0)),
      ], child: const MyHomePage(title: 'Flutter Demo Home Page')),

    );
  }
}
