import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:apps/src/features/form/presentation/bmi_form.dart';

class ObjectiveForm extends StatefulWidget {
  const ObjectiveForm({Key? key}) : super(key: key);

  @override
  _ObjectiveFormState createState() => _ObjectiveFormState();
}

class _ObjectiveFormState extends State<ObjectiveForm> {
  String dropdownValue = list.first;
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
                      "Tujuan Anda?",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3D3D3D),
                        fontFamily: 'IBMPlexMono',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: DropdownMenuExample(),
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
                  MaterialPageRoute(builder: (context) => const BMIForm()),
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

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({Key? key}) : super(key: key);

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return NeuContainer(
      width: 290,
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      child: DropdownMenu<String>(
        width: 290,
        initialSelection: list.first,
        onSelected: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
      ),
    );
  }
}

const List<String> list = <String>[
  'Tujuan',
  'Menurunkan Berat Badan',
  'Menaikkan Berat Badan',
  'Menjaga Berat Badan'
];
