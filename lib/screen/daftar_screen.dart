import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _register() {
    final username = _usernameController.text;
    final email = _emailController.text;
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (password == confirmPassword) {
      // Simpan user baru ke dalam daftar user statis (untuk demo saja)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User registered: $username')),
      );
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,  // Ubah latar belakang menjadi hitam
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up',
        style: TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
          fontSize: 26 
        ),),
        backgroundColor: Colors.black,  // Ubah warna latar belakang AppBar menjadi hitam
        foregroundColor: Colors.yellow,  // Ubah warna teks di AppBar menjadi kuning
      ),
      body: Center(  // Menambahkan Center untuk memusatkan konten
        child: SingleChildScrollView(  // Menambahkan scrollable untuk konten panjang
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Pusatkan form secara vertikal
              crossAxisAlignment: CrossAxisAlignment.center,  // Pusatkan form secara horizontal
              children: [
                // Form Input Username
                TextField(
                  controller: _usernameController,
                  style: TextStyle(color: Colors.yellow),  // Ubah warna teks menjadi kuning
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.yellow),  // Ubah warna label menjadi kuning
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),  // Ubah garis bawah menjadi kuning
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),  // Ubah garis fokus menjadi kuning
                    ),
                  ),
                ),
                SizedBox(height: 20), // Jarak antara form
                
                // Form Input Email
                TextField(
                  controller: _emailController,
                  style: TextStyle(color: Colors.yellow),  // Ubah warna teks menjadi kuning
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.yellow),  // Ubah warna label menjadi kuning
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),  // Ubah garis bawah menjadi kuning
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),  // Ubah garis fokus menjadi kuning
                    ),
                  ),
                ),
                SizedBox(height: 20), // Jarak antara form
                
                // Form Input Password
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(color: Colors.yellow),  // Ubah warna teks menjadi kuning
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.yellow),  // Ubah warna label menjadi kuning
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),  // Ubah garis bawah menjadi kuning
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),  // Ubah garis fokus menjadi kuning
                    ),
                  ),
                ),
                SizedBox(height: 20), // Jarak antara form
                
                // Form Input Confirm Password
                TextField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  style: TextStyle(color: Colors.yellow),  // Ubah warna teks menjadi kuning
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.yellow),  // Ubah warna label menjadi kuning
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),  // Ubah garis bawah menjadi kuning
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),  // Ubah garis fokus menjadi kuning
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _register,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.yellow,  // Ubah warna teks tombol menjadi hitam
                  ),
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
