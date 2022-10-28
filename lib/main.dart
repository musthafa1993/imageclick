import 'package:flutter/material.dart';
import 'package:flutter_tutorial_beginer/pages/login_page.dart';
import 'package:flutter_tutorial_beginer/pages/register_page.dart';

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
           
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                 ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const LoginPage();
                  }),);
                }, 
              child: const Text("Login"),
              ),
               const SizedBox(width: 50.0,),
           ElevatedButton( style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
             ),
             onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return const RegisterPage();
                }),
                );
             },
            child: const Text('Register'), ),
            ],
          ),
         
           const  SizedBox(height: 50.0),
          
          Image.asset('Images/urban-206.png')
        ],
      ),
     
     ),
   )
    );
  } 
}
