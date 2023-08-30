import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User profile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User profile'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Nom d\'utilisateur',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text('Adresse email'),
                        SizedBox(height: 10),
                        Text('Autres informations sur l\'utilisateur'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action du premier bouton
                },
                child: Text('Edit profile'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(double.infinity, 50), // Élargir le bouton
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Action du deuxième bouton
                },
                child: Text('Delete user'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(double.infinity, 50), // Élargir le bouton
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(UserProfile());
}
