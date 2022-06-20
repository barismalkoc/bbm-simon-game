import 'package:bbm_simon/page/loggedInPage.dart';
import 'package:bbm_simon/widget/signUpWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
            }
            else if(snapshot.hasData) {
              return const LoggedInPage();
            } else if(snapshot.hasError) {
              return const Center(child: Text('Simon Says,\nSomething Went Wrong'),);
            }else {
              return const SignUpWidget();
            }
          },
        ),
      );
}
