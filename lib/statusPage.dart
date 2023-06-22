import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text(
          'Status',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Add your logic for handling the menu action
            },
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/user1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              'John Doe',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Just now',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(Icons.more_horiz),
            onTap: () {
              // Add your logic for handling the status tap
            },
          ),
          ListTile(
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/user2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              'Jane Smith',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '2 minutes ago',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(Icons.more_horiz),
            onTap: () {
              // Add your logic for handling the status tap
            },
          ),
          // Add more ListTile widgets for other status updates
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic for handling the new status creation
        },
        backgroundColor: Color(0xFF25D366),
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}

