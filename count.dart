import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  const CountPage({super.key});

  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  // Controller untuk menangani input dari pengguna
  final TextEditingController _numController = TextEditingController();

  // Variabel untuk menyimpan jumlah digit input
  int _digitCount = 0;

  // Fungsi untuk menghitung jumlah digit dalam input
  void _countDigits() {
    String input = _numController.text; // Mendapatkan input dari TextField
    setState(() {
      // Cek jika input tidak kosong dan merupakan angka, hitung jumlah digit
      _digitCount = input.isNotEmpty && int.tryParse(input) != null ? input.length : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan warna yang konsisten dengan halaman lain
      appBar: AppBar(
        title: const Text('Hitung Jumlah Angka'),
        backgroundColor: Colors.teal, // Warna AppBar konsisten
      ),
      backgroundColor: Colors.grey[850], // Latar belakang gelap
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding sekitar body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Rata tengah secara vertikal
          children: [
            // TextField untuk memasukkan angka
            TextField(
              controller: _numController, // Menghubungkan dengan controller
              keyboardType: TextInputType.number, // Hanya angka yang bisa dimasukkan
              style: TextStyle(color: Colors.white), // Warna teks putih
              decoration: const InputDecoration(
                labelText: 'Masukkan angka', // Label untuk input
                labelStyle: TextStyle(color: Colors.white), // Warna label putih
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal), // Warna border saat input aktif
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal), // Warna border saat fokus
                ),
              ),
              onChanged: (value) => _countDigits(), // Panggil _countDigits setiap kali input berubah
            ),
            const SizedBox(height: 20),
            // Menampilkan jumlah digit
            Text(
              'Jumlah Digit: $_digitCount',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna teks hasil agar kontras dengan latar belakang gelap
              ),
            ),
          ],
        ),
      ),
    );
  }
}
