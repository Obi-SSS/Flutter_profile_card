import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ayubi Ocean Putra'),
        ),
        /**
         * row dan collum bisa memiliki banyak wiget
         * row itu ke samping
         * collum itu ke bawah
         */
        body: Column(
          children: <Widget>[
            SizedBox(
              child: SizedBox(
                width: 200,
                child: Container(
                  child: Text(
                    'nama',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.redAccent,
                      fontFamily: 'arial'//harus ada font nya,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Ayubi Ocean Putra',
               style: TextStyle(
                backgroundColor: Color.fromARGB(
                  200, 
                  100, 
                  100, 
                  100,
                  ),
               ),
               ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,);
  }
}