import 'package:flutter/material.dart';

void main() {
  runApp(notification());
}

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notifications',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notifications',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              // Go to the notification page
              Navigator.pushNamed(context, '/notifications');
            },
          ),
        ),
        body: ListView(
          children: [
            // Notification 1
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 16, 15, 15),
                  ),
                ),
              ),
              title: const Text('user create'),
              subtitle: const Text('This is a notification.'),
              onTap: () {
                // Go to the first page
                Navigator.pushNamed(context, '/home');
              },
            ),
            // Notification 2
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 16, 15, 15),
                  ),
                ),
              ),
              title: const Text('user delete'),
              subtitle: const Text('This is another notification.'),
            ),
            // Notification 3
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 16, 15, 15),
                  ),
                ),
              ),
              title: const Text('user update'),
              subtitle: const Text('This is the last notification.'),
            ),
          ],
        ),
      ),
    );
  }
}
