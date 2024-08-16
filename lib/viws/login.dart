import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? username;
  String? email;
  String? pass;

  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: key,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (value) {
                email = value;
              },
              validator: ValidationBuilder().email().maxLength(50).build(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Enter valid Email"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {
                pass = value;
              },
              validator: ValidationBuilder().maxLength(50).minLength(7).build(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                hintText: "Enter valid Password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      if (key.currentState?.validate() ?? false) {
                        try {
                          FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: email!, password: pass!);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'wrong-password') {
                            print("wrong password");
                          }
                        } catch (e) {
                          print(e);
                        }
                      }
                    },
                    child: Text("Signup"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
