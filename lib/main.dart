import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Selected Index: $_selectedIndex'),
          ),
          Center(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted'),
                    subtitle: Text('Music by Julie'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {/* ... */},
                        child: const Text('Buy Tickets'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {/* ... */},
                        child: const Text('Listen'),
                      ),
                      const SizedBox(width: 8),
                    ],
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted'),
                    subtitle: Text('Music by Julie'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {/* ... */},
                        child: const Text('Buy Tickets'),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () {/* ... */},
                        child: const Text('Listen'),
                      ),
                      const SizedBox(width: 8),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        ///////////////////////////
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
      ),
    );
  }
}
