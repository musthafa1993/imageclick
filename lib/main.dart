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
  int numberOfImage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("welcome"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: 
   SingleChildScrollView(
     child: Center(
      child: Column(
        children: [
           const SizedBox(height: 50.0),
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
           ElevatedButton(onPressed: (){
            setState(() {
              numberOfImage = numberOfImage +1;
            });
           },
            child: const Text('Add an image'), ),
           const  SizedBox(height: 50.0),
          
          Column(
            children: List.generate(
              numberOfImage,
             (index) => Image.asset(currentPath),),
          ),

        ],
      ),
     
     ),
   )
    );
  } 
}
