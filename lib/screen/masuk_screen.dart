import 'package:flutter/material.dart';
import 'package:template_project/screen/daftar_screen.dart';
import 'home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Menggunakan tipe List<Map<String, String>> dan menambahkan ? untuk null safety
  static const _users = [
    {
      "username": "Dzaky",
      "email": "kyy@gmail.com",
      "password": "123",
    }
  ];

  void _login() {
    final email = _emailController.text;
    final password = _passwordController.text;

    // Periksa apakah data email dan password cocok dengan data yang ada
    final user = _users.firstWhere(
      (user) => user['email'] == email && user['password'] == password,
      orElse: () => {}, // Mengembalikan Map kosong jika tidak ada yang cocok
    );

    if (user.isNotEmpty) {  // Memeriksa apakah Map user tidak kosong
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid email or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,  // Background menjadi hitam
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sig In',
        style: TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
          fontSize: 26 
        ),),
        backgroundColor: Colors.black,  // Warna app bar menjadi hitam
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Card(
            color: Colors.black87,  // Warna latar belakang kartu
            elevation: 10,  // Menambahkan bayangan pada kartu
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),  // Sudut yang melengkung
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Form Email
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),  // Label warna putih
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),  // Border bawah putih
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),  // Border bawah biru saat fokus
                      ),
                    ),
                    style: TextStyle(color: Colors.white),  // Warna teks putih
                  ),
                  SizedBox(height: 20),
                  
                  // Form Password
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),  // Label warna putih
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),  // Border bawah putih
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),  // Border bawah biru saat fokus
                      ),
                    ),
                    obscureText: true,
                    style: TextStyle(color: Colors.white),  // Warna teks putih
                  ),
                  SizedBox(height: 20),
                  
                  // Tombol Login
                  ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,  // Warna tombol kuning
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,  // Warna teks tombol hitam
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  
                  // Tombol Register
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),  // Teks Register berwarna putih
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

