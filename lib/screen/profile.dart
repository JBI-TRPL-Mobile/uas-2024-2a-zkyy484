import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  void _logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black,
        title: Text('Log Out', style: TextStyle(color: Colors.yellow)),
        content: Text('Do you want to log out?', style: TextStyle(color: Colors.white)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel', style: TextStyle(color: Colors.yellow)),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Text('Log Out', style: TextStyle(color: Colors.yellow)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile',
        style: TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
          fontSize: 26 
        ),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar dengan border
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.yellow, width: 4),
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // ListTile dengan anak elemen tambahan dalam Card
              Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.yellow, width: 2),
                ),
                child: ListTile(
                  title: Text('Account Settings', style: TextStyle(color: Colors.yellow)),
                  subtitle: Text('Manage your account settings', style: TextStyle(color: Colors.white70)),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.yellow),
                  onTap: () {
                    // Tambahkan navigasi atau aksi lainnya
                  },
                ),
              ),
              SizedBox(height: 10),

              Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.yellow, width: 2),
                ),
                child: ListTile(
                  title: Text('Privacy Policy', style: TextStyle(color: Colors.yellow)),
                  subtitle: Text('Read our privacy policy', style: TextStyle(color: Colors.white70)),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.yellow),
                  onTap: () {
                    // Tambahkan navigasi atau aksi lainnya
                  },
                ),
              ),
              SizedBox(height: 10),

              Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.yellow, width: 2),
                ),
                child: ListTile(
                  title: Text('Terms of Service', style: TextStyle(color: Colors.yellow)),
                  subtitle: Text('Review our terms of service', style: TextStyle(color: Colors.white70)),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.yellow),
                  onTap: () {
                    // Tambahkan navigasi atau aksi lainnya
                  },
                ),
              ),
              SizedBox(height: 10),

              Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.yellow, width: 2),
                ),
                child: ListTile(
                  title: Text('Help & Support', style: TextStyle(color: Colors.yellow)),
                  subtitle: Text('Get help and support', style: TextStyle(color: Colors.white70)),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.yellow),
                  onTap: () {
                    // Tambahkan navigasi atau aksi lainnya
                  },
                ),
              ),
              
              SizedBox(height: 20),

              // Tombol Log Out
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => _logout(context),
                child: Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
