import 'package:flutter/material.dart';
import 'myhomepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller untuk username
  TextEditingController inputUsername = TextEditingController();

  // Controller untuk password
  TextEditingController inputPassword = TextEditingController();

  // Fungsi login
  void login() {
    // username dan password yang benar
    if (inputUsername.text == 'User' && inputPassword.text == 'User1') {
      // Pindah ke Home
      // push digunakan supaya bisa kembali ke Login
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else {
      // Pesan jika username/password salah
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('username & password salah!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.transparent,
      ),

      // Background Login
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      body: Column(
        children: [
          // Logo
          Center(
            child: Image.asset(
              'asset/kl_app_icon_512.png',
              width: 200,
              height: 200,
            ),
          ),

          const SizedBox(height: 16),

          // username
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputUsername,

                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 116, 248, 167),
                  filled: true,
                  hintText: 'Masukan Username',

                  // Icon username
                  prefixIcon: Icon(Icons.person),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Password
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputPassword,

                // Menyembunyikan password
                obscureText: true,

                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 116, 248, 167),
                  filled: true,
                  hintText: 'Masukan Password',

                  // Icon password
                  prefixIcon: Icon(Icons.lock),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Tombol Login/Masuk
          ElevatedButton.icon(
            icon: const Icon(Icons.login),
            label: const Text("Login"),

            onPressed: login,
          ),
        ],
      ),
    );
  }
}
