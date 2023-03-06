import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

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

  Color mycolor = Colors.lightBlue;
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
              // ignore: prefer_const_constructors
              bottom: TabBar(
                tabs: const <Widget>[
                  Tab(text: 'HSV/HSL/RGB'),
                  Tab(text: 'Material'),
                  Tab(text: 'Blocky'),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            body: TabBarView(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("JEEELELE", style: TextStyle(color: mycolor)),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'Pick a color!',
                                ),
                                content: SingleChildScrollView(
                                  child: ColorPicker(
                                    pickerColor: mycolor, //default color
                                    onColorChanged: (Color color) {
                                      //on color picked
                                      setState(() {
                                        mycolor = color;
                                      });
                                    },
                                  ),
                                ),
                                actions: <Widget>[
                                  ElevatedButton(
                                    child: const Text('DONE'),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); //dismiss the color picker
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      child: Text("Default Color Picker"),
                    ),
                  ],
                ),
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
