import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/bg.jpg'),
            )),
            child: Center(
              child: Builder(builder: (context) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 2)),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber[50],
                                border: Border(bottom: BorderSide(width: 2))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: const [
                                  Image(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage('assets/images/DAV.png')),
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 5,
                          child: Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      AssetImage('assets/images/rishabh.png'),
                                ),
                                Text(
                                  'Rishabh Sharma',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '1710991659',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200),
                                ),
                                Text(
                                  'Computer Science Department',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'Hosteller',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red[50],
                                border: Border(top: BorderSide(width: 2))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 6),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        color: Colors.blueGrey[700],
                                      ),
                                      const Text(
                                        '  Phone -',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      const Text('7015689452'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.blueGrey[700],
                                      ),
                                      const Text(
                                        '  Email -',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      const Text('rishabhsharma3617@gmail.com'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                );
              }),
            ),
          ),
        ));
  }
}
