import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/ForgetPass.dart';
import 'package:login_ui/Pages/SignIn.dart';
import 'package:login_ui/Pages/SignUp.dart';

import '../consts/Dimension.dart';
import 'carousel.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Container(
                    height: Dim.Hight10*22,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/img_1.png"),
                            fit: BoxFit.fitWidth)),
                  ),
                  Text(
                    "Book bike anywhere,right from your",
                    style:
                        TextStyle(fontSize: 17, wordSpacing: 3, letterSpacing: 1),
                  ),
                  Text(
                    "smartaphone",
                    style:
                        TextStyle(fontSize: 17, wordSpacing: 3, letterSpacing: 1),
                  ),
                  SizedBox(
                    height: Dim.Hight10*2,
                  ),
                  GestureDetector(onTap: (){
                    Get.to(SignUp(),transition: Transition.leftToRight);

                  },
                    child: Container(
                      height: Dim.Hight10*5,
                      width: 170,
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Dim.Hight10*2,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        ),
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, -2),
                                color: Color(0xFF6476fe),
                                spreadRadius: 5,
                                blurRadius: 30)
                          ],
                          color: Color(0xFF6476fe),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
              ],
            ),
                )),
            Container(
              height: Dim.Hight10*20,
              width: double.maxFinite,
              color: Colors.white,
              child: carousel(),
            ),
            Container(
              height: Dim.Hight10*22,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/img.png"), fit: BoxFit.fill)),
            ),
            SizedBox(height: Dim.Hight10*2,)

            // Expanded(child: Container()),
            // Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
