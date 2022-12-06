
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home : MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> colors = [
    Colors.blueGrey,
    Colors.green,
    Colors.deepOrange,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter ListView"),
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((BuildContext, index) {
            return Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              color: colors[index],
            );
          },
            childCount: 4,
          ),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(5),
        )
        );
  }
}