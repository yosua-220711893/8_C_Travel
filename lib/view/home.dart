
import 'package:delapan_c_travel_2/view/view_list.dart';
import 'package:flutter/material.dart';
import 'package:delapan_c_travel_2/View/view_list.dart';

import 'dart:async';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Image(image: NetworkImage('https://picsum.photos/200/300')),
    ),
    ListNamaView(),
    // Tab Profile yang menampilkan informasi perusahaan travel
    ProfileView(data: {},), // Mengganti Text menjadi widget yang menampilkan profile perusahaan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
  static List<Widget> _widgetOptions = <Widget>[
    Stack(
      children: [
        Center(
          child: Image.asset(
            'images/pa.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Selamat Datang di Pritis Travel',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Colors.black,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.black54,
                child: const Text(
                  'Jelajahi berbagai destinasi menarik dan dapatkan penawaran terbaik!',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    const Center(
      child: Text('Index 3: Profile'),
    ),
  ];

  Widget _buildDestinationCard(String title, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white.withOpacity(0.5),
      child: Container(
        width: 250,
        child: Column(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 190,
              width: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 220, 220),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: 'List'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}

// Widget untuk menampilkan profil perusahaan travel
class ProfileView extends StatelessWidget {
  final Map<String, dynamic> data;

  const ProfileView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile Pengguna', 
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Icon(Icons.account_box),
              SizedBox(width: 8),
              Text('Username : '),
            ],
          ),
          const SizedBox(height: 10),
          Text(data['username']),
          const SizedBox(height: 20),
          Row(
            children: const [
              Icon(Icons.phone),
              SizedBox(width: 8),
              Text('Nomor Telepon : '),
            ],
          ),
          const SizedBox(height: 10),
          Text(data['notelp']),
          const SizedBox(height: 20),
          Row(
            children: const [
              Icon(Icons.email),
              SizedBox(width: 8),
              Text('Email : '),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Icon(Icons.phone),
              SizedBox(width: 8),
              Text('Nomor Telepon : 082136337565'),
            ],
          ),
          const SizedBox(height: 10),
          Text(data['email']),
        ],
      ),

    );
  }
}
