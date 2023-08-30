import 'package:flutter/material.dart';
import 'package:projet_flutter/UserPage.dart';

class editProfile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create user'),
        foregroundColor: Color.fromARGB(255, 243, 241, 241),
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(//pour faire le cercle et card pour le tableau
                  radius: 50.0,
                  backgroundColor: Color.fromARGB(255, 199, 197, 197),
                  child: Icon(Icons.person, color: Colors.black, size: 40.0),
                ),
                const SizedBox(height: 60),
                TextFormField(
                  controller: firstNameController,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'Firstname',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Firstname invalide';
                    }
                    return null; // Validation réussie
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: lastNameController,
                  style: TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'Lastname',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Lastname invalide';
                    }
                    return null; // Validation réussie
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: ageController,
                  style: TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'Age',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Age invalide';
                    }
                    return null; // Validation réussie
                  },
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserPage(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 16),
                    minimumSize: const Size(double.infinity, 49),
                  ),
                  child: const Text('Save change'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

