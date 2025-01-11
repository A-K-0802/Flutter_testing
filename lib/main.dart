import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonname = 'Click';
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My new app"),
        ),
        body: Center(
          child: current == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.purple,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            buttonname = 'Clicked';
                          });
                        },
                        child: Text(buttonname),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            buttonname = 'Clicked';
                          });
                        },
                        child: Text(buttonname),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
          currentIndex: current,
          onTap: (int index) {
            setState(() {
              current = index;
            });
          },
        ),
      ),
    );
  }
}
