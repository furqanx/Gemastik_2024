import 'package:apps/src/features/generate/presentation/result.dart';
import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:gif_view/gif_view.dart';

class Generating extends StatefulWidget {
  const Generating({Key? key}) : super(key: key);

  @override
  _GeneratingState createState() => _GeneratingState();
}

class _GeneratingState extends State<Generating> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDEFFD8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Generating...",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3D3D3D),
                        fontFamily: 'IBMPlexMono',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 0),
                      child: Center(
                        child: GifView.asset(
                          'assets/images/loading.gif',
                          height: 200,
                          width: 200,
                          frameRate: 15, // default is 15 FPS
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        'Sedang memproses data berdasarkan informasi yang telah anda berikan sebelumnya',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFF3D3D3D),
                          fontFamily: 'robotomono',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: NeuTextButton(
                borderRadius: BorderRadius.zero,
                buttonColor: const Color(0xff0B8FF9F),
                buttonHeight: 50,
                buttonWidth: 150,
                enableAnimation: true,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Result()),
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
          ],
        ),
      ),
    );
  }
}
