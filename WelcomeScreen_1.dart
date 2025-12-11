import 'dart:async';
import 'package:flutter/material.dart';
import 'WelcomeScreen2.dart';

class Welcomescreen1 extends StatefulWidget {
  const Welcomescreen1({super.key});

  @override
  State<Welcomescreen1> createState() => _WelcomeScreen1State();
}

class _WelcomeScreen1State extends State<Welcomescreen1> {
  double _opacity = 1.0; //full

  @override
  void initState(){
    super.initState();

    Timer(const Duration(seconds: 4), (){
      setState(() {
        _opacity = 0; //menghilang
      });
    });

    Timer(const Duration(seconds: 8),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen2()),
      );
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
           colors: [
              Color(0xFF44C80B), //hijau
              Color(0xFFE9FBE3), // hijau muda
              Color(0xFFFFFFFF), //putih
            ],
            stops: [
              0.0,
              0.5,
              1.0,
            ],
          ),
        ),
        child: Center(
          child: AnimatedOpacity(
           duration: const Duration(seconds: 3),
           opacity: _opacity,
           curve: Curves.easeInOut,      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5)
                ),
              ],
            ),
            child: Image.asset(
              'assets/logo1.png',
              width: 140,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),

              const SizedBox(height: 20),

                 const Text(
                   "chandrawara",
                   style: TextStyle(
                     fontSize: 26,
                     fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}