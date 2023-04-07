import 'package:flutter/material.dart';
import 'package:practice/view/course_screen.dart';
import 'package:practice/view/home_screen.dart';
import 'package:practice/view/profile_screen.dart';
import 'package:practice/view/search_screen.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool lightTheme = true;
  Color currentColor = Colors.amber;
  List<Color> currentColors = [Colors.yellow, Colors.green];
  List<Color> colorHistory = [];

  // void changeColor(Color color) => setState(() => currentColor = color);
  // void changeColors(List<Color> colors) =>
  //     setState(() => currentColors = colors);

  // Color mycolor = Colors.lightBlue;

  int _counter = 0;

  final List<StatelessWidget> tabs = [
    const HomeScreen(),
    const CourseScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tabs.elementAt(_counter),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _counter,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        selectedItemColor: Color.fromRGBO(199, 88, 14, 1),
        iconSize: 30,
        unselectedItemColor: Color.fromRGBO(112, 112, 112, 1),
        elevation: 18,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined),
              label: 'Course',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Home',
              backgroundColor: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            _counter = index;
          });
        },
      ),
    );
  }
}

AppBar allChatScreenAppBar() {
  return AppBar(
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
              height: 50,
              alignment: Alignment.center,
            ),
            Text('data')
          ],
        ),
        Text("data")
      ],
    ),
    centerTitle: false,
    elevation: 0,
  );
}
