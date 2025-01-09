import 'package:flutter/material.dart';
import 'package:template_project/screen/daftar_screen.dart';
import 'package:template_project/screen/masuk_screen.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,  // Sesuaikan dengan warna tema aplikasi
      ),
      backgroundColor: Colors.black,  // Mengubah latar belakang halaman menjadi hitam
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Gambar di atas judul
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.jpg'),  // Ganti dengan path gambar Anda
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(height: 20),

              // Judul
              Text(
                'Welcome to Our App',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,  // Warna teks judul menjadi putih agar terlihat di latar belakang hitam
                ),
              ),
              SizedBox(height: 10),

              // Deskripsi singkat
              Text(
                'Your journey to success starts here. Sign in to continue or sign up to get started.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,  // Warna teks deskripsi agar tetap terlihat di latar belakang hitam
                ),
              ),
              SizedBox(height: 30),

              // Row untuk tombol Sign In dan Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Menyebar tombol ke kanan dan kiri
                children: <Widget>[
                  // Tombol Sign In
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,  // Warna tombol kuning
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,  // Warna teks hitam
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Menambahkan jarak antar tombol

                  // Tombol Sign Up
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,  // Warna tombol kuning
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,  // Warna teks hitam
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
