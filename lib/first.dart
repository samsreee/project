import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Scrn1 extends StatelessWidget {
  final String name;
  final String mail;
  const Scrn1({super.key, required this.name,required this.mail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                'https://png.pngtree.com/png-clipart/20231019/original/pngtree-user-profile-avatar-png-image_13369991.png',
              ),
            ),
          ),
          Center(
            child: Text(
               name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
            indent: 450,
            endIndent: 450
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 500,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.call, color: Colors.teal),
                SizedBox(width: 50),
                Text(
                  '+22996119149',
                  style: TextStyle(color: Colors.teal, fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 500,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.mail, color: Colors.teal),
                SizedBox(width: 50),
                Text(
                  mail ,
                  style: TextStyle(color: Colors.teal, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
