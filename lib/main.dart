import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'calory_estimator_content.dart';
import 'home_content.dart';
import 'profile_content.dart';

void main() async {
  // Get available cameras
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  runApp(MyApp(cameras: cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription>? cameras;

  const MyApp({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(cameras: cameras),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final List<CameraDescription>? cameras;

  const MyHomePage({Key? key, required this.cameras}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<IconData> _icons = [
    Icons.home,
    Icons.business,
    Icons.business,
    Icons.school,
  ];

  static const List<String> _labels = [
    'Home',
    'Map',
    'Calory estimator',
    'Profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildContent() {
    switch (_selectedIndex) {
      case 0:
        return HomeContent();
      case 2:
        return CaloryEstimatorContent(cameras: widget.cameras!);
      case 3:
        return ProfileContent();
      default:
        return Container();
    }
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        for (var i = 0; i < _icons.length; i++)
          BottomNavigationBarItem(
            icon: Icon(_icons[i]),
            label: _labels[i],
          ),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
