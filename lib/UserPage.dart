import 'package:flutter/material.dart';
import 'package:projet_flutter/createProfile.dart';
import 'package:projet_flutter/userProfile.dart';
//import 'package:projet_flutter/main.dart';
//import 'CreateProfile.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  _UserPageState createState() => _UserPageState();
}

//class UserPage extends StatefulWidget {
//const UserPage({Key? key}) : super(key: key);

@override
// ignore: library_private_types_in_public_api
//_HomePageState createState() => _HomePageState();
//}

class _UserPageState extends State<UserPage> {
  // Liste factice de noms de contacts avec les âges correspondants
  List<Map<String, dynamic>> contacts = [
    {"name": "John Doe", "age": 30},
    {"name": "Jane Smith", "age": 25},
    {"name": "Michael Johnson", "age": 28},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 16, 15, 15),
                ),
              ),
            ),
            title: Text(contacts[index]["name"]),
            subtitle: Text(" ${contacts[index]["age"]} ans"),
            // Ajoutez d'autres widgets d'affichage pour chaque contact si nécessaire
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => UserProfile()),
          );
        },
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
