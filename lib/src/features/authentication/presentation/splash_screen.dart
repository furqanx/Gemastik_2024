import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFB8FF9F),
          ),
          Stack(
            children: [
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Image.asset('assets/images/background_main.png'),
              ),
            ],
          ),
          Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Menengahkan vertikal
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Menengahkan horizontal
                children: [
                  SizedBox(width: 20),
                  Text(
                    "Atur Pola Diet Anda",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF3D3D3D),
                        fontFamily: 'RobotoMono'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      "Kami akan membantu anda dalam mengatur pola diet dengan menawarkan produk di sekitar anda",
                      style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFF3D3D3D),
                          fontFamily: 'RobotoMono'),
                      textAlign: TextAlign
                          .center, // Menengahkan teks secara horizontal
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 80, // Atur jarak dari bawah layar
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: ElevatedButton(
                  onPressed: () {
                    // Fungsi untuk menangani saat tombol ditekan
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff0B8FF9F)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    side: MaterialStatePropertyAll<BorderSide>(
                      BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10), // Atur margin vertikal
                    child: Text("Lanjut",
                        style: TextStyle(
                          fontFamily: 'IBMPlexMono',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ),
          ),
          // Tombol kedua di bawah tombol pertama
          Positioned(
            left: 0,
            right: 0,
            bottom: 40, // Atur jarak dari bawah layar
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Fungsi untuk menangani saat tombol ditekan
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffBEF0CD)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    side: MaterialStatePropertyAll<BorderSide>(
                      BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    elevation: MaterialStatePropertyAll<double>(8),
                    shadowColor: MaterialStateProperty.all<Color>(
                        Colors.black.withOpacity(1.0)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10), // Atur margin vertikal
                      child: Text(
                        "Sudah Mempunyai Akun",
                        style: TextStyle(
                          fontFamily: 'IBMPlexMono',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
