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

String imagePath1 = 'images/conifer-1083.png';
String imagePath2 = 'images/jaconda-41.png';

String currentPath = imagePath1;

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
          onPressed: (){
            setState(() {
                if(currentPath == imagePath1){
              currentPath = imagePath2;
            }else{
              currentPath = imagePath1;
            }
            });
          
          }, 
        child: const Text("click")
        ),
        Image.asset(currentPath),
      ],
    ),
  
   )
    );
  } 
}
