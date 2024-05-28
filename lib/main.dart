import 'package:flutter/material.dart';
import 'package:oiopay/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OIO PAY',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
      builder: (context, child){
        return MediaQuery(data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)), child:  child!,
        );
      },
    
    );
  }
}