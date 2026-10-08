import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Controller untuk mengambil input nama
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Judul aplikasi
        title: const Text("KLINIK"),

        // Tombol kembali ke Login
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Kembali ke halaman Login
            Navigator.pop(context);
          },
        ),

        backgroundColor: Colors.transparent,
      ),

      // Background Home
      backgroundColor: const Color.fromARGB(245, 64, 209, 124),

      body: Column(
        children: [
          // Input nama
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputNama,

                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 116, 248, 167),
                  filled: true,
                  hintText: 'Masukan Nama Anda',

                  // Icon nama
                  prefixIcon: Icon(Icons.person),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),

                // Ketika menekan Enter
                onFieldSubmitted: (values) {
                  inputNama.text = values;
                },
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Tombol Tampilkan Nama
          ElevatedButton.icon(
            icon: const Icon(Icons.visibility),
            label: const Text("Tampilkan Nama"),

            onPressed: () {
              print(inputNama.text);
            },
          ),
        ],
      ),
    );
  }
}
