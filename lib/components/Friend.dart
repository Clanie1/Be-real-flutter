import 'package:flutter/material.dart';

class Friend extends StatelessWidget {
  final String name;
  final String username;
  final String image;

  const Friend(
      {required this.name, required this.username, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  username,
                  style: const TextStyle(color: Colors.white60),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Icon(Icons.close, color: Colors.white)
        ],
      ),
    );
  }
}
