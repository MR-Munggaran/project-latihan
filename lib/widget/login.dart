import 'package:flutter/material.dart';
import 'package:projectkedua/widget/home.dart'; // Pastikan import sudah benar

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar perangkat
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, // Menyesuaikan padding
          ),
          children: [
            Hero(
              tag: 'hero',
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: screenWidth * 0.18, // Responsif terhadap ukuran layar
                child: Image.asset('images/gamer.png'),
              ),
            ),
            SizedBox(
                height: screenHeight * 0.05), // Menyesuaikan jarak vertikal
            TextFormField(
              autofocus: false,
              initialValue: 'alucard@gmail.com',
              decoration: InputDecoration(
                hintText: 'Email',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            SizedBox(
                height: screenHeight * 0.01), // Menyesuaikan jarak vertikal
            TextFormField(
              autofocus: false,
              initialValue: 'some password',
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            SizedBox(
                height: screenHeight * 0.03), // Menyesuaikan jarak vertikal
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BookListPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  minimumSize: Size(double.infinity,
                      screenHeight * 0.07), // Menyesuaikan tinggi button
                  elevation: 5.0,
                ),
                child: const Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
