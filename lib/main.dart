import 'package:flutter/material.dart';
import 'package:projet_flutter/UserPage.dart';
import 'package:projet_flutter/createProfile.dart';
import 'package:projet_flutter/editProfile.dart';
import 'package:projet_flutter/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Users',
      theme: ThemeData(
          //primarySwatch: Colors.black,
          ),
      color: Colors.white,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const UserPage(),
    notification(),
  
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: [ UserPage(), notification(), createProfile() ][_currentIndex],
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // currentIndex: _currentIndex,
        // onTap: (index) => setCurentIndex(index),
        //type: BottomNavigationBarType.fixed,

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.black,
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            backgroundColor: Colors.black,
            label: 'Notifications',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
