import 'package:flutter/material.dart';
import 'package:delapan_c_travel_2/View/register.dart';
import 'package:delapan_c_travel_2/View/home.dart';

class LoginView extends StatefulWidget {
  final Map? data;

  const LoginView({super.key, this.data});

  @override
  _TravelLoginViewState createState() => _TravelLoginViewState();
}

class TravelLoginView extends StatefulWidget {
  const TravelLoginView({Key? key}) : super(key: key);

  @override
  State<TravelLoginView> createState() => _TravelLoginViewState();
}

class _TravelLoginViewState extends State<TravelLoginView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white, // Mengubah latar belakang menjadi putih
            ),
            // Login Form
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo di bagian atas
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Image.asset(
                          'images/logo.png', // Path ke logo
                          height: 100, // Ukuran logo
                        ),
                      ),
                      // Travel-themed title
                      const Text(
                        'Welcome to Pritis Travel',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Mengubah warna teks menjadi hitam
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Username field
                      TextFormField(
                        controller: usernameController,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: const TextStyle(color: Colors.grey),
                          helperText: "Enter your travel account username",
                          helperStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(Icons.person_outline,
                              color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color.fromARGB(238, 47, 33, 233)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),

                      // Password field
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.grey),
                          helperText: "Enter your travel account password",
                          helperStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(Icons.lock_outline,
                              color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color.fromARGB(255, 33, 12, 225)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),

                      // Login button
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Handle login logic
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeView(), // Panggil halaman Home
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          backgroundColor: const Color.fromARGB(255, 3, 5, 153),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Register link
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterView(), // Panggil halaman Register
                            ),
                          );
                        },
                        child: const Text(
                          'Don\'t have an account? Register here!',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
