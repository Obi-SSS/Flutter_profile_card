import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail-profile.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  final title = 'Ucup Gureero';

  final List<String> imageList = const <String>[
    'https://unsplash.com/photos/people-waiting-on-a-train-platform-d2aCbaPymVU',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  final List<String> BadgeList = const <String>[
    '💀',
    '👑',
    '😊',
    '🤨',
    '😂',
    '❤️',
    '😍',
    '😒',
    '👌',
    '😘',
  ];

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
                    title.toUpperCase(),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.justify,

                  //spacer
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Icon(
                                    Icons.gamepad,
                                    size: 75,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Game Project'),
                                    Text('10 Game'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12, width: 2),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              offset: Offset(2, 3),
                              color: Colors.lightGreenAccent,
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
                              child: Icon(
                                Icons.android,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Android Project\'s',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('10 APK\'s'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => DetailProfile()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Wiget Profile',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailProfile(title: title,)),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Detail Profile'.toUpperCase()),
                    ),
                  ),
                ),
                /**
                 * schadule
                 */
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Scadule'.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 2,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      // width: double.infinity,   buat ngasih lebag
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          /**
                           * belajar
                           */
                          children: <Widget>[
                            Text(
                              'belajar',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Icon(Icons.timer, size: 30),
                            Text(
                              '07.30 - 14.30',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /**
                     * mambaca
                     */
                    Row(
                      children: [
                        SizedBox(height: 10),
                        Column(
                          children: <Widget>[
                            Text(
                              'Membaca',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Icon(Icons.book, size: 30),
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
                    /**
                     * tidur
                     */
                    Column(
                      children: <Widget>[
                        Text(
                          'Tidur',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Icon(Icons.bed, size: 30),
                        Text(
                          '21.30 - 03.15',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Badages',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 110,
                  child: ListView(
                    /**
                     * BadgeList = nama variable di atas
                     * element = nama variable dari map
                     * return = tempat wiget dari data list
                     */
                    scrollDirection: Axis.horizontal,
                    children: BadgeList.map((element) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.redAccent),
                          child: Center(
                            child: Text(
                              '${element}',
                              style: TextStyle(fontSize: 60),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                // SizedBox(
                //   height: 110,
                //   child: ListView(
                //     children: imageList.map((e) {

                //       return Padding(padding: const EdgeInsets.all(8.0), child: Container(height: 100, width: 100, decoration: BoxDecoration(color: Colors.redAccent),child: Center(child: Text('${e}',style:  TextStyle(fontSize: 60),),),),);
                //     }),
                //   ),
                // ),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('${imageList[index]}'),
                        ),
                      );
                    },
                  ),
                ),

                Text('🎶', style: TextStyle(fontSize: 60)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
