import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListviewDynamic Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListViewDynamic(),
    );
  }
}

class ListViewDynamic extends StatelessWidget {
  const ListViewDynamic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(title: Center(child: const Text('Listview Demo'))),
      body: ListView.builder(
        itemCount: 60,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 150,
            child: Card(
              elevation: 5,
              color: Colors.white,
              shadowColor: Colors.black12,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Text',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
