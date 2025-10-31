import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  final title;

  const DetailProfile({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail $Title'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              /**
               * navigator .pop untuk mengclose halaman
               */
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('back'),
            ),
            Text('Ini Hlaman Detail'),
          ],
        ),
      ),
    );
  }
}
