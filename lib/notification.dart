import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          notificationItem(
            title: 'user create',
            subtitle: 'This is a notification.',
            time: DateTime.now(),
          ),
          notificationItem(
            title: 'user delete',
            subtitle: 'This is another notification.',
            time: DateTime.now().subtract(const Duration(hours: 1)),
          ),
          notificationItem(
            title: 'user update',
            subtitle: 'This is the last notification.',
            time: DateTime.now().subtract(const Duration(hours: 2)),
          ),
        ],
      ),
    );
  }
}

class notificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final DateTime time;

  notificationItem({
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
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
            Icons.notifications,
            color: Color.fromARGB(255, 16, 15, 15),
          ),
        ),
      ),
      title: Text(title),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(subtitle),
          Text(
            DateFormat('HH:mm').format(time),
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
      onTap: () {
        // Action à effectuer lorsque l'utilisateur appuie sur la notification
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: notification(),
  ));
}
