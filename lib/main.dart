import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to My App'),
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return const Center(
      child: Text(
        'Ini adalah halaman Home',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
