import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/ipeformlogo.png', height: 100), 
          Container(
            child: Column(
              children: [
                  CircularProgressIndicator(
                  color: const Color.fromARGB(255, 141, 89, 0),

          ), // Loading animation
          // SizedBox(height: 20),
          Text('Welcome...'), 
          SizedBox(height: 20),
              ],
            )
          )
          
        ],
      ),
      nextScreen: HomePage(), 
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Colors.white, 
      duration: 10000, 
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to your app!'),
      ),
    );
  }
}
