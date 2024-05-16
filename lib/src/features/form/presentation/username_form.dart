import 'package:apps/src/features/form/presentation/objective_form.dart';
import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class UsernameForm extends StatefulWidget {
  const UsernameForm({Key? key}) : super(key: key);

  @override
  _UsernameFormState createState() => _UsernameFormState();
}

class _UsernameFormState extends State<UsernameForm> {
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
                      "Nama Anda?",
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3D3D3D),
                        fontFamily: 'IBMPlexMono',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 0),
                      child: SizedBox(
                        width: 300,
                        child: NeuContainer(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person),
                              hintText: "Username",
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
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
                  MaterialPageRoute(
                      builder: (context) => const ObjectiveForm()),
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
