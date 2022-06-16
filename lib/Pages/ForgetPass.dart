import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Welcome.dart';

import '../consts/Dimension.dart';
import 'SignUp.dart';

class Forget extends StatelessWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:
            EdgeInsets.only(left: Dim.Hight10*3,top: Dim.Hight20*3, right: Dim.Hight10*3),child: Center(
              child: SingleChildScrollView(
                child: Column(
        children: [

          Text(
                "Forget Password",
                style: TextStyle(
                    color: Color(0xFF6476fe), fontSize: Dim.Hight10 * 3),
          ),
          Text(
                "Enter your Email to send reset enmail",
                style: TextStyle(
                    color: Colors.grey, fontSize: Dim.Hight10*1.4),
          ),
          SizedBox(height: Dim.Hight * 0.03),
          TextFormField(
            validator: (val) {
                if (val!.isEmpty ||
                    !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(val)) {
                  return "Enter Email";
                } else {
                  return null;
                }
            },
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6476fe)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6476fe)),
                ),
                labelText: "Email",
                labelStyle: TextStyle(color: Color(0xFF6476fe)),
                icon: Icon(
                  Icons.email,
                  color: Color(0xFF6476fe),
                ),
                iconColor: Color(0xFF6476fe),
            ),
          ),
          SizedBox(
            height: Dim.Hight10 * 3,
          ),
          GestureDetector(
            onTap: () {
                Get.to(SignUp(),
                    transition: Transition.leftToRight);
            },
            child: GestureDetector(    onTap: (){
              Get.off(Welcome(),transition: Transition.leftToRightWithFade);
            },
              child: Container(
                  height: Dim.Hight10 * 5,
                  width: 170,
                  child: Center(
                    child: Text(
                      "Send",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Dim.Hight10 * 2,
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
            ),
          ),
        ],
      ),
              ),
            ),
      ),
    );
  }
}
