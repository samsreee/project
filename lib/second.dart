import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/first.dart';

class Login extends StatelessWidget {
   Login({super.key});
  final myController = TextEditingController(
  );
  final mailController = TextEditingController(

  );
  final passController = TextEditingController(

  );
  final confirmController = TextEditingController(

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Text(
              'Sign up',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'Create your account',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              textAlign: TextAlign.center,
              controller: myController ,
              decoration: InputDecoration(
                hintText: 'Username',
                fillColor: Colors.purpleAccent,
                filled: true,
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              textAlign: TextAlign.center,
              controller: mailController,
              decoration: InputDecoration(
                hintText: 'Email',
                fillColor: Colors.purpleAccent,
                filled: true,
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              textAlign: TextAlign.center,
              controller: passController,
              decoration: InputDecoration(
                hintText: 'Password',
                fillColor: Colors.purpleAccent,
                filled: true,
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              textAlign: TextAlign.center,
              controller: confirmController,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                fillColor: Colors.purpleAccent,
                filled: true,
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scrn1(name:myController.text,mail: mailController.text),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: Text(
                'Sign up',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )),
          Text(
            'or',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Scrn1(name: '',mail: '',),));
              },
              style: ElevatedButton.styleFrom(),
              child: Text(
                'Sign in with google',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.purple),
              )),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 550),
              Text(
                'Already have an account?',
              ),
              SizedBox(width: 5),
              TextButton(
                onPressed: () {
                  print(myController.text);
                  print(mailController.text);
                  print(passController.text);
                  print(confirmController.text);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
