import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Results",
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
                        child: NeuContainer(
                          color: Color(0xFFBEF0CD),
                          width: 300,
                          borderRadius: BorderRadius.circular(5),
                          borderWidth: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Tujuan",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          fontFamily: 'IBMPlexMono',
                                        ),
                                      ),
                                      Text(
                                        "Menurunkan berat badan",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'IBMPlexMono',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                NeuIconButton(
                                  buttonHeight: 30,
                                  buttonWidth: 30,
                                  buttonColor: const Color(0XFFB8FF9F),
                                  icon: const Icon(
                                    Icons.check,
                                    size: 20,
                                  ),
                                  enableAnimation: false,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 0),
                        child: NeuContainer(
                          color: Color(0xFFBEF0CD),
                          width: 300,
                          borderRadius: BorderRadius.circular(5),
                          borderWidth: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Berat Badan",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          fontFamily: 'IBMPlexMono',
                                        ),
                                      ),
                                      Text(
                                        "Berat badaan saat ini 60kg",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'IBMPlexMono',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                NeuIconButton(
                                  buttonHeight: 30,
                                  buttonWidth: 30,
                                  buttonColor: const Color(0XFFB8FF9F),
                                  icon: const Icon(
                                    Icons.check,
                                    size: 20,
                                  ),
                                  enableAnimation: false,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 0),
                        child: NeuContainer(
                          color: Color(0xFFBEF0CD),
                          width: 300,
                          borderRadius: BorderRadius.circular(5),
                          borderWidth: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Berat Badan Ideal",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          fontFamily: 'IBMPlexMono',
                                        ),
                                      ),
                                      Text(
                                        "Berat badan yang diinginkan 55kg",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'IBMPlexMono',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                NeuIconButton(
                                  buttonHeight: 30,
                                  buttonWidth: 30,
                                  buttonColor: const Color(0XFFB8FF9F),
                                  icon: const Icon(
                                    Icons.check,
                                    size: 20,
                                  ),
                                  enableAnimation: false,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
