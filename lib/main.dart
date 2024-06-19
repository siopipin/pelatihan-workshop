import 'package:flutter/material.dart';
import 'package:pelatihan_flutter_wiyata/finals/beranda_ig_screen.dart';
import 'package:pelatihan_flutter_wiyata/finals/myhome_screen.dart';
import 'package:pelatihan_flutter_wiyata/finals/todos_screen.dart';
import 'package:pelatihan_flutter_wiyata/sesi_1/01_test_screen.dart';
import 'package:pelatihan_flutter_wiyata/sesi_1/02_todos_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IG Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // tampilan IG screen
      // home: BerandaIGScreen(),

      // tampilan todos
      home: const TodosScreen(),
    );
  }
}
