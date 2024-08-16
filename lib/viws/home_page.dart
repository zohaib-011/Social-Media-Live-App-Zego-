import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_zego/components/message.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  showMessage(context, "Signout Success");
                },
                title: Text("Signout"))
          ],
        ),
      ),
    );
  }
}
