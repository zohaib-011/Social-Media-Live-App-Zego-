import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_media_zego/viws/home_page.dart';
import 'package:social_media_zego/viws/login.dart';

import 'package:social_media_zego/viws/signup.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, // Add the options here
    );
    runApp(const MainApp());
  } catch (e) {
    print(e.toString());
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Social App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
          ),
      home: FirebaseAuth.instance.currentUser == null ? Login() : HomePage(),
    );
  }
}
