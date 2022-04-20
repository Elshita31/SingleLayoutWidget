import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // nama aplikasi
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Alignment'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(top: 20),
//child
                child: ListTile(
                  leading: Image.network("https://asset-a.grid.id//crop/0x0:0x0/700x465/photo/bobofoto/original/17235_jenis-jenis-hutan-berdasarkan-bentang-alamnya.jpg"),
                  title: Text(
                    "Hutan",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    "Hutan Amazon adalah hutan hujan di Amazon, Amerika Selatan. Wilayah ini, yang juga disebut Amazonia atau Amazon Basin, meliputi wilayah seluas tujuh juta kilometer persegi",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis, // ellipsis untuk memotong subtitle yang melebihi batas
                  ),
                ));
          }),
    );
  }
}
