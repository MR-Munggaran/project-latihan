import 'package:flutter/material.dart';
import 'package:projectkedua/models/book.dart';

class BookDetailPage extends StatelessWidget {
  final Book book;

  const BookDetailPage({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar untuk keperluan responsif
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.04), // Padding responsif
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar buku dengan ukuran responsif
                Image.asset(
                  book.imageAsset,
                  width: screenWidth, // Menyesuaikan lebar gambar dengan layar
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                // Judul buku dengan ukuran font responsif
                Text(
                  book.title,
                  style: TextStyle(
                    fontSize:
                        screenWidth * 0.07, // Responsif berdasarkan lebar layar
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                // Penulis buku dengan ukuran font responsif
                Text(
                  'Author: ${book.author}',
                  style: TextStyle(
                    fontSize:
                        screenWidth * 0.05, // Responsif berdasarkan lebar layar
                  ),
                ),
                const SizedBox(height: 10),
                // Tahun terbit buku dengan ukuran font responsif
                Text(
                  'Year: ${book.year}',
                  style: TextStyle(
                    fontSize: screenWidth *
                        0.045, // Responsif berdasarkan lebar layar
                  ),
                ),
                const SizedBox(height: 20),
                // Deskripsi dengan ukuran font responsif
                const Text(
                  'Description: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  book.description,
                  style: TextStyle(
                    fontSize: screenWidth *
                        0.045, // Responsif berdasarkan lebar layar
                  ),
                ),
                const SizedBox(height: 20),
                // Tombol kembali dengan ukuran responsif
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
