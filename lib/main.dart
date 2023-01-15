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
        body: Center(
            child: (Center(
                // For Assets Image use Image.asset
                child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTZJrqP9fYtCuGu3HU2NMF4VM0U8Eu58t63ndFCiSX&s',
          height: 500,
          width: 500,
          fit: BoxFit.contain,
          color: Colors.greenAccent,
          colorBlendMode: BlendMode.overlay,
        )))));
  }
}
