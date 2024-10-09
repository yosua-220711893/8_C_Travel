import 'package:delapan_c_travel_2/view/view_list.dart';
import 'package:flutter/material.dart';
import 'package:delapan_c_travel_2/View/view_list.dart';

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
