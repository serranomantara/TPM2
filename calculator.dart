import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  // Controller untuk menangani input dari pengguna (angka pertama)
  final TextEditingController _num1Controller = TextEditingController();

  // Controller untuk menangani input dari pengguna (angka kedua)
  final TextEditingController _num2Controller = TextEditingController();

  // Variabel untuk menampilkan hasil perhitungan
  double _result = 0;

  // Fungsi untuk melakukan operasi kalkulasi
  void _calculate(String operation) {
    // Mendapatkan nilai dari input pengguna dan mengonversinya ke double
    double num1 = double.tryParse(_num1Controller.text) ?? 0; // Jika input kosong atau tidak valid, set 0
    double num2 = double.tryParse(_num2Controller.text) ?? 0; // Sama seperti di atas

    setState(() {
      // Cek operasi yang dipilih (tambah atau kurang)
      if (operation == 'add') {
        _result = num1 + num2; // Penambahan
      } else if (operation == 'subtract') {
        _result = num1 - num2; // Pengurangan
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar yang menampilkan judul halaman
      appBar: AppBar(
        title: const Text('Kalkulator Sederhana'),
        backgroundColor: Colors.teal, // Warna latar belakang AppBar
      ),
      // Latar belakang halaman kalkulator yang gelap
      backgroundColor: Colors.grey[850], 
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Memberikan padding di sekitar body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Mengatur konten agar rata tengah
          children: [
            // Input pertama (angka pertama)
            TextField(
              controller: _num1Controller, // Menghubungkan dengan controller
              keyboardType: TextInputType.number, // Hanya menerima input angka
              style: TextStyle(color: Colors.white), // Warna teks menjadi putih
              decoration: const InputDecoration(
                labelText: 'Masukkan angka pertama', // Label input
                labelStyle: TextStyle(color: Colors.white), // Warna label menjadi putih
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal), // Border saat input aktif
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal), // Border saat fokus
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Input kedua (angka kedua)
            TextField(
              controller: _num2Controller, // Menghubungkan dengan controller
              keyboardType: TextInputType.number, // Hanya menerima input angka
              style: TextStyle(color: Colors.white), // Warna teks menjadi putih
              decoration: const InputDecoration(
                labelText: 'Masukkan angka kedua', // Label input
                labelStyle: TextStyle(color: Colors.white), // Warna label menjadi putih
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal), // Border saat input aktif
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal), // Border saat fokus
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Tombol operasi kalkulasi (tambah dan kurang)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menjaga tombol sejajar
              children: [
                _buildMenuButton(context, 'Tambah', () => _calculate('add')), // Tombol tambah
                _buildMenuButton(context, 'Kurang', () => _calculate('subtract')), // Tombol kurang
              ],
            ),
            const SizedBox(height: 20),
            // Menampilkan hasil perhitungan
            Text(
              'Hasil: $_result', // Menampilkan hasil yang telah dihitung
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna hasil agar kontras dengan background
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat tombol dengan gaya yang konsisten
  Widget _buildMenuButton(BuildContext context, String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed, // Menentukan aksi yang terjadi saat tombol ditekan
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal, // Warna latar belakang tombol
        foregroundColor: Colors.white, // Warna teks tombol
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Membuat tombol dengan sudut melengkung
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding tombol
        elevation: 5, // Memberikan efek bayangan pada tombol
      ),
      child: Text(
        label, // Teks pada tombol
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
