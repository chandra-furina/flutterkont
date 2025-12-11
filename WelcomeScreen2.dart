import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_world/LoginScreen.dart';


class WelcomeScreen2 extends StatefulWidget {
  const WelcomeScreen2({super.key});

  @override
  State<WelcomeScreen2> createState() => _WelcomeScreen2State();
}

class _WelcomeScreen2State extends State<WelcomeScreen2> {
  double _opacity = 0; // awal

  @override
  void initState() {
    super.initState();

    //masuk
    Timer(const Duration(milliseconds: 300), (){
      setState(() {
        _opacity = 1;
      });
    });

    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement( 
        context,
         MaterialPageRoute(builder: (context) => const LoginScreen()),
         );
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnimatedOpacity(
        duration: const Duration(seconds: 2),
        opacity: _opacity,
        curve: Curves.easeInOut,
        child: Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
            "Beres Tanpa Ribet",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
           const Text(
             "Bersih Tanpa Nunggu.",
              style: TextStyle(
               fontSize: 26,
               fontWeight: FontWeight.w400,
              ),
             ),
            ] ,
          ),
        ) 
      ),
    );
  }
}