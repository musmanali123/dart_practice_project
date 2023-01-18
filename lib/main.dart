import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter P_P',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter_Practice_Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: CountryListPick(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text('Pick your country'),
          ),
          theme: CountryTheme(
            isShowFlag: true,
            isShowTitle: true,
            isShowCode: true,
            isDownIcon: true,
            showEnglishName: true,
            labelColor: Colors.blueAccent,
          ),
          initialSelection: '+44',
          // or
          // initialSelection: 'US'
          // onChanged: (CountryCode code) {
          //   // print(code.name);
          //   // print(code.code);
          //   // print(code.dialCode);
          //   // print(code.flagUri);
          // }
        ));
  }
}
