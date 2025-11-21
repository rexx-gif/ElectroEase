import 'package:electroease/LoginPage.dart';
import 'package:flutter/material.dart';
// import 'package:electroease/DiscoverPage.dart';
import 'package:lottie/lottie.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   // Controller buat TextField username
//   final TextEditingController _usernameController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0F2027),
              Color(0xFF203A43),
              Color(0xFF2C5364),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            // === Enhanced corner animations ===

            // Top-left: Floating bubbles with subtle rotation
            Positioned(
              top: -70,
              left: -150,
              child: Transform.rotate(
                angle: 2,
                child: Lottie.asset(
                  "assets/lottie/BlueLiquid.json",
                  width: 400,
                  height: 400,
                ),
              ),
            ),

            // Kanan Atas
            Positioned(
              top: -70,
              right: -140,
              child: Transform.rotate(
                angle: 4,
                child: Transform.flip(
                  flipX: true,
                  child: Lottie.asset(
                    "assets/lottie/BlueLiquid.json",
                    width: 350,
                    height: 350,
                  ),
                ),
              ),
            ),

            // Kiri Bawah
            Positioned(
              bottom: -100,
              left: -100,
              child: Lottie.asset(
                "assets/lottie/BlueLiquid.json",
                width: 380,
                height: 380,
              ),
            ),

            // Bisa tambahin pojok kanan bawah kalau mau
            // Positioned(
            //   bottom: -120,
            //   right: -120,
            //   child: Lottie.asset(
            //     "assets/lottie/YellowLiquid.json",
            //     width: 400,
            //     height: 400,
            //   ),
            // ),

            // === Konten utama ===
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      "assets/lottie/Login.json",
                      width: 300,
                      height: 300,
                      repeat: true,
                      animate: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 260),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45, top: 5),
                      child: Text(
                        "Welcome back,please sign up first to your account.",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 350,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white
                          ),
                          cursorColor: Colors.blueAccent,
                          // controller: _usernameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent.withOpacity(0.6),
                            hintText: "Username",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.blueAccent
                              ),
                            ),
                            suffixIcon: const Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 350,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white
                          ),
                          cursorColor: Colors.blueAccent,
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent.withOpacity(0.6),
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.blueAccent
                              )
                            ),
                            suffixIcon: const Icon(Icons.lock),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 350,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white
                          ),
                          cursorColor: Colors.blueAccent,
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent.withOpacity(0.6),
                            hintText: "Confirm Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.blueAccent
                              )
                            ),
                            suffixIcon: const Icon(Icons.lock),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(
                                  // username: _usernameController.text,
                                ),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 56, 111, 134),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(16),
                            )),
                        child: Text("Sign Up"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
