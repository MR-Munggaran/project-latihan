class Book {
  String title;
  String author;
  String description;
  int year;
  String imageAsset;

  Book({
    required this.imageAsset,
    required this.title,
    required this.author,
    required this.description,
    required this.year,
  });
}

var bookList = [
  Book(
    title: 'The Great Gatsby',
    author: 'F. Scott Fitzgerald',
    description:
        'A novel set in the Roaring Twenties about wealth, love, and the American Dream.',
    year: 1925,
    imageAsset: 'images/great-gatsby.jpg',
  ),
  Book(
    title: '1984',
    author: 'George Orwell',
    description:
        'A dystopian novel about totalitarianism and the oppressive power of the state.',
    year: 1949,
    imageAsset: 'images/gw.jpg',
  ),
  Book(
    title: 'Filosofi Teras',
    author: 'Henry Manampiring',
    description:
        'Lebih dari 2000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi',
    year: 2023,
    imageAsset: 'images/filosofi-teras.jpg',
  ),
  Book(
    title: 'Dunia Sophie',
    author: 'Jostein Gaarder',
    description:
        'Sophie, seorang pelajar sekolah menengah berusia empat belas tahun. Suatu hari pulang sekolah, dia mendapat sebuah surat misterius. Apa isinya?',
    year: 2001,
    imageAsset: 'images/dunia-sophie.jpg',
  ),
  Book(
    title: 'Atomic Habits',
    author: 'James Clear',
    description:
        'Atomic Habits: Perubahan Kecil yang Memberikan Hasil Luar Biasa adalah buku kategori self improvement karya James Clear.',
    year: 2019,
    imageAsset: 'images/atomic.jpg',
  ),
  Book(
    title: 'Kemarau di Sedanau',
    author: 'Jostein Gaarder',
    description:
        'Salman, seorang remaja penuh harapan dari Sedanau, Natuna, bermimpi untuk menjadi dokter dan mengubah nasibnya. Namun, untuk mencapai impiannya, ia harus berjuang keras untuk mendapatkan beasiswa dan menjalani pendidikan kedokteran yang panjang dan penuh tantangan.',
    year: 2024,
    imageAsset: 'images/kemarau.jpg',
  ),
  // Data buku lainnya...
];
