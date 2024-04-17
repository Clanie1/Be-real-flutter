import 'package:flutter/material.dart';
import 'FriendsPage.dart';
import 'ProfilePage.dart';
import '../components/Post.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'BeReal.',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.person, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FriendsPage()),
            );
          },
        ),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Image.network(
                  'https://media.licdn.com/dms/image/C5603AQFu4MzdoDJyqA/profile-displayphoto-shrink_800_800/0/1653337678616?e=2147483647&v=beta&t=mVGw-lau2dbVNJkM-JU6Q1TcO1gloMijZ1ABsm0ysBI'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
          ),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.white,
          size: 24,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mis Amigos",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Text(
                      "Amigos de Amigos",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
          ],
        ),
      ),
    );
  }
}
