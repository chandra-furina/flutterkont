import 'dart:math';
import 'LupaPasswordPage.dart';
import 'auth_firebase.dart';
import 'package:flutter/material.dart';

class LoginCandrawaraPage extends StatefulWidget {
  const LoginCandrawaraPage({super.key});

  @override
  State<LoginCandrawaraPage> createState() => _LoginCandrawaraPageState();
}

class _LoginCandrawaraPageState extends State<LoginCandrawaraPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  bool isPasswordVisible = false;


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: true,
    body: SafeArea(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 120),

              //logo
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/logo1.png',
                  width: 120,
                  height: 120,
                ),
              ),

              const SizedBox(height: 35),

              
               const Text(
              "chandrawara",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),

              const SizedBox(height: 35),

              //username/email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Username atau Email",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                //passwod
                TextField(
                  controller: passController,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                     ),
                     suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ), 
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LupaPasswordPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Lupa Password?",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                //tombol masuk
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF44C80B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ), 
                    onPressed:() async {
                      try {
                        final user = await AuthFirebase.login(
                          emailController.text.trim(),
                          passController.text.trim(),
                          );

                          if (user != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Login Berhasil!"))
                            );
                          }
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Login gagal: $e")),
                           );
                      }
                    },
                     child: const Text(
                      "Masuk",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                       ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ),
      ); 
  }
}