import 'package:flutter/material.dart';

class DataKelompokPage extends StatelessWidget {
  const DataKelompokPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan warna yang konsisten dengan halaman lain
      appBar: AppBar(
        title: const Text('Data Kelompok'),
        backgroundColor: Colors.teal, // Warna AppBar yang konsisten
      ),
      backgroundColor: Colors.grey[850], // Warna latar belakang gelap
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding sekitar konten
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Vertikal tengah
            crossAxisAlignment: CrossAxisAlignment.center, // Horizontal tengah
            children: [
              // Menampilkan gambar pertama dengan ukuran yang ditentukan
              Image.asset(
                'assets/images/serrano.jpg', 
                width: 100, 
                height: 100,
              ),
              const SizedBox(height: 10),
              // Menampilkan teks nama dan NIM dengan gaya teks
              const Text(
                '1. Serrano Mantara (NIM: 123220003)',
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna teks agar kontras dengan latar belakang gelap
                ),
              ),
              const SizedBox(height: 20),
              // Menampilkan gambar kedua
              Image.asset(
                'assets/images/almer.jpg', 
                width: 100, 
                height: 100,
              ),
              const SizedBox(height: 10),
              // Menampilkan teks nama dan NIM untuk anggota kedua
              const Text(
                '2. Almer Farand Rafael (NIM: 123220040)',
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna teks putih untuk kontras
                ),
              ),
              const SizedBox(height: 20),
              // Menampilkan gambar ketiga
              Image.asset(
                'assets/images/bagas.jpg', 
                width: 100, 
                height: 100,
              ),
              const SizedBox(height: 10),
              // Menampilkan teks nama dan NIM untuk anggota ketiga
              const Text(
                '3. Bagas Duta Prasetya (NIM: 123220057)',
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna teks putih untuk kontras
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
