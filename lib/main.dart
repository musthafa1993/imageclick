import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const  WelcomePage(),
    );
  }
}
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("welcome"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: 
   Center(
    child: Column(
      children: [
        ElevatedButton(
           style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
           ),
          onPressed: (){}, 
        child: const Text("click")
        ),
        Image.asset('images/conifer-1083.png'),
      ],
    ),
  
   )
    );
  } 
}
