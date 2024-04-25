import 'package:flutter/material.dart';
class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20231019/original/pngtree-user-profile-avatar-png-image_13369991.png')
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Done!',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
          ),
          Text(
            'Your Profile Has Been Scheduled!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue
            ),
          ),
        ],
      ),
    );
  }
}
