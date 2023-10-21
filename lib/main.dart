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
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Container(
                color: Colors.black,
                height: 500,
                child: ListView.builder(
                 itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                 return Container(
                   alignment: Alignment.center,
                   
                    child: Text("Container",),
                    color: Colors.amber,
                    height: 200,




                  );
                 }
                )
           
                  
                ),
              ),
           
          ],
        ));
  }
}
