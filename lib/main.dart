import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

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

  Card _buildFoodRecomendationCard() {
    return Card(
      child: SizedBox(
        width: 200,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/salad_image_1.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Salad'),
                Text('4.8'),
              ],
            ),
            const Text('53 cal'),
          ],
        ),
      ),
    );
  }

  Card _buildIngredientsRecomendationCard() {
    return Card(
      child: SizedBox(
        width: 200,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/ingredient_image_1.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Dada ayam'),
                Text('4.9'),
              ],
            ),
            const Text('100 cal'),
          ],
        ),
      ),
    );
  }

  Card _buildCalorieBoardCard() {
    return const Card(
      child: SizedBox(
        width: 300,
        height: 150,
        child: Column(
          children: <Widget>[
            Text('0 of 1850 cal'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Protein: 0%'),
                Text('Lemak : 0%'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Karbohidrat: 0%'),
                Text('Serat: 0%'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHomeContent() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Text('Selected Index: $_selectedIndex'),
            _buildCalorieBoardCard(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildFoodRecomendationCard(),
                  _buildFoodRecomendationCard(),
                  _buildFoodRecomendationCard(),
                  _buildFoodRecomendationCard(),
                  _buildFoodRecomendationCard(),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildIngredientsRecomendationCard(),
                  _buildIngredientsRecomendationCard(),
                  _buildIngredientsRecomendationCard(),
                  _buildIngredientsRecomendationCard(),
                  _buildIngredientsRecomendationCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildMap() {
  //   return Center();
  // }

  // Widget _buildCameraCaloryEstimator() {
  //   return Center();
  // }
  // // Halaman Edit profil
  // // Halaman privacy policy
  // // 8 Halaman memasukkan data diri
  // // Halaman atau card input data

  Widget _buildProfileContent() {
    return const Center(
      child: Card(
        child: SizedBox(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    switch (_selectedIndex) {
      case 0:
        return _buildHomeContent(); // Menggunakan widget baru untuk halaman Home
      // case 1:
      //   return _buildMap();
      // case 2:
      //   return _buildCameraCaloryEstimator();
      case 3:
        return _buildProfileContent();
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
