import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'My profile',
           style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
           ),
           ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ayubi Ocean Putra', 
                style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[],
                ),
                Column(
                  children: <Widget>[],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
