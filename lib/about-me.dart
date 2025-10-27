import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about me', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                /**
                 * image Profile
                 */
                 
                // Image.asset(
                //   'assets/profile.png',
                //   width: 100,
                //   height: 100,
                //   ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('assets/train.jpg'),
                ),
                //about
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Ayubi Ocean Putra'.toUpperCase(),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                  textAlign: TextAlign.justify,
                  
                  //spacer
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black12,
                      width: 2,
                    ),
                    boxShadow: [BoxShadow(
                      blurRadius: 2,
                      offset: Offset(2, 3),
                      color: Colors.lightGreenAccent
                    ),
                    ],
                    ),
                  child: Row(
                    children: <Widget>[
                      
                      /**
                       * text nama
                       */
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.android, color: Colors.white, size: 50),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Android Project\'s',
                              style: TextStyle(fontWeight: FontWeight.bold,),
                            ),
                            Text('10 APK\'s'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,),
                  child: Text('Scadule'.toUpperCase(), style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 2,
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      /**
                       * belajar
                       */
                      children: <Widget>[
                        Text(
                          'belajar', 
                          style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins'
                        ),
                        ),
                        Icon(
                          Icons.timer,
                          size: 30,
                        ),
                        Text(
                        '07.30 - 14.30',
                        style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    /**
                     * mambaca
                     */
                    Column(
                      children: <Widget>[
                        Text(
                          'Meembaca', 
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins'
                          ),
                        ),
                        Icon(
                          Icons.book,
                          size: 30,
                        ),
                        Text(
                          '20.00 - 21.00',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
