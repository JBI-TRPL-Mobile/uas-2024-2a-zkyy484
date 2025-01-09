import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  static const _messages = [
    {
      "sender": "Dzaky",
      "message": "Sudah makan?",
      "image": "assets/images/logo.jpg",
    },
    {
      "sender": "Dwi",
      "message": "Bagaimana kabarmu?",
      "image": "assets/images/logo.jpg",
    },
    {
      "sender": "Aqshol",
      "message": "P inpo mabar",
      "image": "assets/images/logo.jpg",
    },
    {
      "sender": "Alfha Berdasi",
      "message": "Info bantai-bantai",
      "image": "assets/images/logo.jpg",
    },
    {
      "sender": "Nobel",
      "message": "Infokan Nongki!",
      "image": "assets/images/logo.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Messages',
        style: TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
          fontSize: 26 
        ),),
        backgroundColor: Colors.black,  // Set warna AppBar menjadi hitam
      ),
      backgroundColor: Colors.black,  // Set background Scaffold menjadi hitam
      body: ListView.builder(
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          final message = _messages[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 5,  // Menambahkan bayangan untuk efek kartu
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),  // Sudut melengkung pada kartu
              side: BorderSide(
                color: Colors.yellow,  // Menambahkan garis tepi berwarna kuning
                width: 2,  // Menentukan ketebalan garis
              ),
            ),
            color: Colors.black,  // Mengatur warna latar belakang kartu menjadi hitam
            child: ListTile(
              contentPadding: EdgeInsets.all(12.0),  // Memberikan padding di dalam ListTile
              leading: CircleAvatar(
                backgroundImage: AssetImage(message["image"]!),
                radius: 25,  // Menentukan ukuran avatar
              ),
              title: Text(
                message["sender"]!,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),  // Mengubah warna teks menjadi putih
              ),
              subtitle: Text(
                message["message"]!,
                style: TextStyle(color: Colors.white70),  // Mengubah warna teks menjadi putih agak transparan
              ),
            ),
          );
        },
      ),
    );
  }
}
