import 'package:flutter/material.dart';
import 'calculator.dart';
import 'bilangan.dart';
import 'count.dart';
import 'datakelompok.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        backgroundColor: Colors.teal, // Warna AppBar yang konsisten
      ),
      backgroundColor: Colors.grey[850], // Latar belakang gelap yang konsisten
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding di sekitar konten
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Rata tengah secara vertikal
            crossAxisAlignment: CrossAxisAlignment.center, // Rata tengah secara horizontal
            children: [
              const SizedBox(height: 50), // Jarak atas untuk judul
              Center(
                child: Text(
                  'HOME',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal, // Warna judul sesuai dengan tema
                  ),
                ),
              ),
              const SizedBox(height: 30), // Jarak setelah judul

              // Tombol Menu 1: Kalkulator
              _buildMenuButton(context, 'Kalkulator', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CalculatorPage()),
                );
              }),

              const SizedBox(height: 20), // Jarak antar tombol

              // Tombol Menu 2: Cek Bilangan Ganjil/Genap
              _buildMenuButton(context, 'Cek Bilangan Ganjil/Genap', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BilanganPage()),
                );
              }),

              const SizedBox(height: 20),

              // Tombol Menu 3: Hitung Jumlah Digit
              _buildMenuButton(context, 'Hitung Jumlah Digit', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CountPage()),
                );
              }),

              const SizedBox(height: 20),

              // Tombol Menu 4: Data Kelompok
              _buildMenuButton(context, 'Data Kelompok', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DataKelompokPage()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat tombol dengan tampilan yang konsisten
  Widget _buildMenuButton(BuildContext context, String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal, // Warna latar belakang tombol
        foregroundColor: Colors.white, // Warna teks tombol
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Sudut tombol melengkung
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding tombol
        elevation: 5, // Efek bayangan pada tombol
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
