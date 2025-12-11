import 'package:flutter/material.dart';
import 'package:hello_world/RegisterPage.dart';
import 'GoogleLoginPage.dart';
import 'LoginCandrawaraPage.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 
  @override
  Widget build(BuildContext context) {
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
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120),

            //logo
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              child: Image.asset(
                'assets/logo1.png',
                width: 140,
                height: 140,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "chandrawara",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 30),
            
            //tombol masuk
            SizedBox(
              width: 240,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4CD964),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) => const LoginCandrawaraPage())
                     );
                },
                child: const Text("Masuk",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            //tombol daftar
            SizedBox(
              width: 240,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) => const RegisterPage())
                     );
                
                },
                child: const Text(
                  "Daftar",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            

            // garis atau
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Row(
              children: [
               Expanded(
                child: Container(height: 1, color: Colors.black26),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Atau",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                  Expanded(
                    child: Container(height: 1, color: Colors.black26),
                )
              ],
            ),
          ),
            //login google dan facebook
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //google
                InkWell(
                  onTap: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Googleloginpage()),
                    );
                  },
                  borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child:
                        Image.asset(
                          'assets/logo2.png',
                          width: 100,
                        ),
                       ),
                     ),

                const SizedBox(width: 20),

                  //facebok
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: 
                        Image.asset(
                          'assets/logo3.png',
                          width: 100,
                        ),
                     ),
                  ),
                ],
              ),

              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
  

                 
                      