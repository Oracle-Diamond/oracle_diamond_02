import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/user/homescreen/userhomescreen.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: FutureBuilder(
            future: _initializeFirebase(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return const LoginScreen();
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Login function
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No user found for that email");
      }
    }

    return user;
  }

  @override
  Widget build(BuildContext context) {
    //create the textfield controller
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5.0,
          ),
          Text("User Login",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.black,
                  letterSpacing: 0.168,
                  fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            height: 0.6,
            width: 350.0,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 25.0,
          ),
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/c/cb/UTM-LOGO-FULL.png',
            height: 150,
            width: 290,
            alignment: const Alignment(0, 0.5),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SizedBox(
            height: 30.00,
          ),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: "UTM Username",
                prefixIcon: Icon(Icons.mail, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)))),
          ),
          const SizedBox(
            height: 26.0,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)))),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text("Forgot password?",
              style: TextStyle(
                color: Color.fromARGB(255, 206, 84, 84),
              )),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Colors.red[900],
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              onPressed: () async {
                User? user = await loginUsingEmailPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                    context: context);
                print(user);
                if (user != null) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => UserHomeScreen()));
                }
              },
              child: const Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
