import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:apps/src/features/form/presentation/username_form.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFDEFFD8),
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
                      textAlign: TextAlign.center, //
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Positioned.fill(
                bottom: 140,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: NeuTextButton(
                    borderRadius: BorderRadius.zero,
                    buttonColor: const Color(0xff0B8FF9F),
                    buttonHeight: 50,
                    buttonWidth: 150,
                    enableAnimation: true,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UsernameForm()),
                    ),
                    text: const Text(
                      "Lanjut",
                      style: TextStyle(
                        fontFamily: 'IBMPlexMono',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                bottom: 65,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: NeuTextButton(
                    borderRadius: BorderRadius.zero,
                    buttonColor: const Color(0xffBEF0CD),
                    buttonHeight: 50,
                    buttonWidth: 250,
                    enableAnimation: true,
                    onPressed: () => debugPrint("hello"),
                    text: const Text(
                      "Sudah Mempunyai Akun",
                      style: TextStyle(
                        fontFamily: 'IBMPlexMono',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
