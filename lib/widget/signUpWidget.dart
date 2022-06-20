import 'package:bbm_simon/provider/googleSignInProvider.dart';
import 'package:bbm_simon/widget/loginTextWidget.dart';
import 'package:bbm_simon/widget/startWidget.dart';
import 'package:bbm_simon/widget/titleWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff1fa5a5),
                            Color(0xff77cccc),
                          ])),
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 20,
                      vertical: MediaQuery.of(context).size.height / 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 80,
                        ),
                        const TitleWidget(),
                        const SizedBox(
                          height: 50,
                        ),
                        const LoginTextWidget(),
                        const SizedBox(
                          height: 80,
                        ),
                        const StartWidget(),
                        const SizedBox(
                          height: 120,
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff1fa5a5),
                            onPrimary: Colors.amberAccent,
                            minimumSize: const Size(100, 50),
                          ),
                          icon: const FaIcon(FontAwesomeIcons.google,
                              color: Colors.redAccent),
                          label: const Text('Sign Up With Google '),
                          onPressed: () {
                            final provider = Provider.of<GoogleSignInProvider>(
                                context,
                                listen: false);
                            provider.googleLogin();
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
