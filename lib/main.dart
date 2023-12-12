import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:MyAnimatedSplashScreen(),
    );
  }
}

class MyAnimatedSplashScreen extends StatelessWidget {
  const MyAnimatedSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors:[
                                Color.fromARGB(255, 237, 167, 62),
                                Color.fromARGB(255, 237, 167, 62),
                                Colors.white,
                                ],
                  ) ,
                ),
          
       child: 
              AnimatedSplashScreen(
              splash: Image.asset('assets/ipeformlogo.png'),
              nextScreen: const HomePage(),
              splashTransition: SplashTransition.fadeTransition,
              duration: 10000,
              backgroundColor: Colors.transparent,
              ),
              

      );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 167, 62),
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Welcome to your app!'),
      ),
    );
  }
}
