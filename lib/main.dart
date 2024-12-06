import 'package:flutter/material.dart';
import 'package:projectkedua/widget/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aplikasi Buku',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          scaffoldBackgroundColor: Colors.yellow.shade100,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.yellow
                .shade100, // Mengatur warna background AppBar// Mengatur warna teks di AppBar
          ),
        ),
        home: const LoginPage());
  }
}
