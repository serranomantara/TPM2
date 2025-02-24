import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); // Kunci untuk form login
  final _usernameController = TextEditingController(); // Controller untuk field username
  final _passwordController = TextEditingController(); // Controller untuk field password

  // Fungsi untuk melakukan login
  void _login() {
    if (_formKey.currentState!.validate()) {
      String username = _usernameController.text;
      String password = _passwordController.text;

      // Validasi sederhana username dan password
      if (username == "user" && password == "password") {
        Navigator.pushReplacementNamed(context, '/home'); // Navigasi ke halaman utama
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Username atau password salah!')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.teal, // Warna AppBar yang konsisten
      ),
      backgroundColor: Colors.grey[850], // Latar belakang gelap yang konsisten
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding di sekitar body
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 50), // Jarak atas untuk judul
              Center(
                child: Text(
                  'Login',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal, // Warna judul sesuai dengan tema
                  ),
                ),
              ),
              const SizedBox(height: 30), // Jarak setelah judul
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.white), // Warna label
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Username tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white), // Warna label
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Warna tombol sesuai tema
                  foregroundColor: Colors.white, // Warna teks tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Sudut tombol melengkung
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding tombol
                  elevation: 5, // Efek bayangan pada tombol
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
