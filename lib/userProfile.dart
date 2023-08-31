import 'package:flutter/material.dart';
import 'package:projet_flutter/editProfile.dart';

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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context)
                  .pop(); // Quitte la page et retourne à la page précédente
            },
          ),
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
                child: const Card(
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
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => editProfile(),// Ouvrir la page d'édition
                    ),
                  );
                },
                child: Text('Edit profile'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Confirmation'),
                        content: const Text(
                            'Voulez-vous vraiment supprimer cet utilisateur?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Ferme la boîte de dialogue
                            },
                            child: const Text('Annuler'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Ajoutez ici l'action à effectuer lors de la suppression
                              Navigator.of(context)
                                  .pop(); // Ferme la boîte de dialogue
                            },
                            child: const Text('Supprimer'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Delete user'),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 119, 117, 117),
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//void main() {
  //runApp(UserProfile());
//}
