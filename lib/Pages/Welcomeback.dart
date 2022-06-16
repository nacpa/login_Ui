import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/consts/Dimension.dart';
import 'package:lottie/lottie.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: Dim.Hight,width: double.maxFinite,
      color: Colors.black,child: Center(child: Lottie.asset("images/lottieJson.json")),

    ),);
  }
}
