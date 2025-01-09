import 'package:flutter/material.dart';
import 'package:template_project/screen/message.dart';
import 'package:template_project/screen/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    // Placeholder untuk Home Page
    Center(child: Text('Home Page')),
    MessagePage(),
    ProfilePage(),
    Center(child: Text('Book Page')),
    Center(child: Text('Search Page')),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,  // Mengatur background color menjadi hitam
      appBar: AppBar(
        title: Text('Home Screen', style: TextStyle(color: Colors.yellow)),  // Teks judul kuning
        backgroundColor: Colors.black,  // Mengatur background toolbar menjadi hitam
      ),
      body: SingleChildScrollView(  // Menambahkan scrollable untuk konten panjang
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Banner Gambar
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/banner.jpg'),  // Ganti dengan path gambar banner Anda
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: 20),

              // Card untuk Keep Moving Up
              Card(
                color: Colors.black,  // Background hitam
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.yellow, width: 2),  // Garis tepi kuning
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Keep Moving Up',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,  // Teks kuning
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Tetap bergerak maju dan jangan berhenti, karena kesuksesan dimulai dari usaha yang tiada henti.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.yellow,  // Teks kuning
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Card untuk Categories (ubah background jadi hitam)
              Card(
                color: Colors.black,  // Mengubah background menjadi hitam
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.yellow, width: 2),  // Memberi border kuning
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow,  // Mengubah warna teks menjadi kuning
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Aksi untuk melihat semua kategori
                              print("See All Categories");
                            },
                            child: Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.yellow,  // Warna kuning untuk teks
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Flexbox untuk Categories (dengan beberapa teks)
                      Wrap(
                        spacing: 16,
                        runSpacing: 8,
                        children: [
                          _buildCategoryChip('Archer'),
                          _buildCategoryChip('Barbarian'),
                          _buildCategoryChip('Wizard'),
                          _buildCategoryChip('Which'),
                          _buildCategoryChip('Hog Raider'),
                          _buildCategoryChip('Dragon'),
                          _buildCategoryChip('Giant'),
                          _buildCategoryChip('PEKKA'),
                          _buildCategoryChip('Goblin'),
                          _buildCategoryChip('Golem'),
                          _buildCategoryChip('Wall Breaker'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Card untuk Top Course (ubah background dan border)
              Card(
                color: Colors.black,  // Background hitam
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.yellow, width: 2),  // Garis tepi kuning
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top Course',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,  // Teks kuning
                        ),
                      ),
                      SizedBox(height: 10),
                      // List Gambar Horizontal untuk Top Course
                      SizedBox(
                        height: 150,  // Mengatur tinggi gambar horizontal
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/qween.jpg'),  // Ganti dengan path gambar
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/bar.jpg'),  // Ganti dengan path gambar
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/iblis.jpg'),  // Ganti dengan path gambar
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/gwd.jpg'),  // Ganti dengan path gambar
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }


  Widget _buildCategoryChip(String label) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.black,
      side: BorderSide(color: Colors.yellow, width: 1),
    );
  }
}
