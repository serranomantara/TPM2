import 'package:flutter/material.dart';

class BilanganPage extends StatefulWidget {
  const BilanganPage({super.key});

  @override
  _BilanganPageState createState() => _BilanganPageState();
}

class _BilanganPageState extends State<BilanganPage> {
  // Controller untuk menangani input angka dari pengguna
  final TextEditingController _numController = TextEditingController();

  // Variabel untuk menampilkan hasil pengecekan (ganjil/genap)
  String _result = '';

  // Fungsi untuk mengecek apakah angka ganjil atau genap
  void _checkOddEven() {
    int? number = int.tryParse(_numController.text); // Mengambil input dan mengonversi menjadi integer
    setState(() {
      // Jika input bukan angka yang valid
      if (number == null) {
        _result = 'Masukkan angka yang valid';
      } else {
        // Cek apakah angka genap atau ganjil
        _result = (number % 2 == 0) ? 'Bilangan Genap' : 'Bilangan Ganjil';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan warna konsisten dan judul halaman
      appBar: AppBar(
        title: const Text('Cek Bilangan Ganjil/Genap'),
        backgroundColor: Colors.teal, // Warna AppBar tetap sama
      ),
      backgroundColor: Colors.grey[850], // Latar belakang halaman gelap
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding sekitar body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Rata tengah
          children: [
            // TextField untuk memasukkan angka
            TextField(
              controller: _numController, // Menghubungkan dengan controller
              keyboardType: TextInputType.number, // Hanya angka
              style: TextStyle(color: Colors.white), // Warna teks menjadi putih
              decoration: const InputDecoration(
                labelText: 'Masukkan angka', // Label input
                labelStyle: TextStyle(color: Colors.white), // Warna label putih
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal), // Border saat input aktif
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal), // Border saat fokus
                ),
              ),
              onChanged: (value) => _checkOddEven(), // Panggil _checkOddEven setiap kali input berubah
            ),
            const SizedBox(height: 20),
            // Menampilkan hasil pengecekan (ganjil/genap)
            Text(
              _result,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna teks hasil agar kontras dengan latar belakang
              ),
            ),
          ],
        ),
      ),
    );
  }
}
