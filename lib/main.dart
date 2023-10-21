// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart'; // أساس الكود

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Scroll(),
    );
  }
}

class Scroll extends StatelessWidget {
  List colors = [100, 200, 300,400,500,600,700]; //  ليسته
  List mytext = ["box1", "box2", "box3","box4","box5","box6","box7"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          padding: EdgeInsets.all(15),
          color: Colors.black,
          height: 500,
          child: ListView.builder(
              itemCount: colors.length, //  تكرار علي حسب عدد الليست
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child: Text("${mytext[index]}"),   //  استدعاء كلمة من ليست 
                  height: 200,
                  color: Colors.amber[  colors[index]  ],   //  تغير درجة اللون من ليست
                );
              }),
        )
      ]),
    );
  }
}
