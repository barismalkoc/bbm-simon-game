import 'package:bbm_simon/provider/googleSignInProvider.dart';
import 'package:bbm_simon/widget/HardLevelBtnWidget.dart';
import 'package:bbm_simon/widget/bestScoreBtnWidget.dart';
import 'package:bbm_simon/widget/easyLevelBtnWidget.dart';
import 'package:bbm_simon/widget/mediumLevelBtnWidget.dart';
import 'package:bbm_simon/widget/titleWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class LoggedInPage extends StatefulWidget {
  const LoggedInPage({Key? key}) : super(key: key);

  @override
  State<LoggedInPage> createState() => _LoggedInPageState();
}

class _LoggedInPageState extends State<LoggedInPage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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
                      horizontal: MediaQuery
                          .of(context)
                          .size
                          .width / 10,
                      vertical: MediaQuery
                          .of(context)
                          .size
                          .height / 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 22,
                              backgroundImage: NetworkImage(user.photoURL!),
                            )),
                        const SizedBox(height: 40),
                        const TitleWidget(),
                        const SizedBox(
                          height: 60,
                        ),
                        const EasyLevelBtnWidget(),
                        const MediumLevelBtnWidget(),
                        const HardLevelBtnWidget(),
                        const BestSCoreBtnWidget(),
                        const SizedBox(
                          height: 120,
                        ),
                        IconButton(
                            onPressed: () {
                              final provider = Provider.of<
                                  GoogleSignInProvider>(
                                  context,
                                  listen: false);
                              provider.googleLogOut();
                              
                            },
                            icon: const Icon(
                              Icons.wb_sunny_outlined,
                              size: 60,
                              color: Colors.amberAccent,
                            )),
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
