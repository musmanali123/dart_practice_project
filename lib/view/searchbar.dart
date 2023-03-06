import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

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

  void changeColor(Color color) => setState(() => currentColor = color);
  void changeColors(List<Color> colors) =>
      setState(() => currentColors = colors);

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: lightTheme ? ThemeData.light() : ThemeData.dark(),
      child: Builder(builder: (context) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () => setState(() => lightTheme = !lightTheme),
              icon: Icon(lightTheme
                  ? Icons.dark_mode_rounded
                  : Icons.light_mode_rounded),
              label: Text(lightTheme ? 'Night' : '  Day '),
              backgroundColor: currentColor,
              elevation: 15,
            ),
            appBar: AppBar(
              title: const Text('Flutter Color Picker Example'),
              backgroundColor: currentColor,
              bottom: TabBar(
                tabs: const <Widget>[
                  Tab(text: 'HSV/HSL/RGB'),
                  Tab(text: 'Material'),
                  Tab(text: 'Blocky'),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Text("JEEELELE"),
                Text("JEEELELE"),
                Text("JEEELELE")
              ],
            ),
          ),
        );
      }),
    );
  }
}
