import 'package:flutter/material.dart';
import 'screens/home.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Quiz App',
        home: const Home(),
        theme: ThemeData.dark(),
      );
}
