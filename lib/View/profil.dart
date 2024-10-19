import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatefulWidget {
  final Map<String, dynamic> data;

  const ProfileView({Key? key, required this.data}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  File? _image; // File untuk menyimpan gambar yang dipilih

  // Fungsi untuk memilih gambar dari galeri
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // Set gambar yang dipilih
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian atas dengan gambar avatar
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Avatar pengguna
                  GestureDetector(
                    onTap: _pickImage, // Pilih gambar saat avatar diklik
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: _image != null
                          ? FileImage(_image!) // Gambar dari file lokal
                          : const NetworkImage(
                              'https://picsum.photos/200',
                            ) as ImageProvider, // Gambar default
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Nama pengguna
                  Text(
                    widget.data['username'] ?? 'Nama Tidak Tersedia',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  // Email pengguna
                  Text(
                    widget.data['email'] ?? 'Email Tidak Tersedia',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            // Bagian bawah untuk detail informasi lainnya
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Nomor telepon
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.phone, color: Colors.blueAccent),
                      title: const Text('Nomor Telepon'),
                      subtitle: Text(widget.data['notelp'] ?? 'Nomor Tidak Tersedia'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Alamat Email
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.email, color: Colors.blueAccent),
                      title: const Text('Email'),
                      subtitle: Text(widget.data['email'] ?? 'Email Tidak Tersedia'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}