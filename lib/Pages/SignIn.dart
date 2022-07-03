import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/ForgetPass.dart';
import 'package:login_ui/Pages/Welcome.dart';
import 'package:login_ui/Pages/Welcomeback.dart';

import '../consts/Dimension.dart';
import 'SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        margin: EdgeInsets.only(left: width / 10, right: width / 10),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SizedBox(height: Dim.Hight10*10,),
                Container(
                  height: Dim.Hight10 * 15,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("images/new.png"))),
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Color(0xFF6476fe), fontSize: Dim.Hight10 * 3),
                ),
                SizedBox(
                  height: Dim.Width10,
                ),
                Text(  
                  "Hello there , Sign In to continue",
                  style: TextStyle(color: Colors.grey),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height * 0.03),
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
                        SizedBox(height: height * 0.03),
                        TextFormField(
                          validator: (val) {
                            if (val!.isEmpty || val.length < 8) {
                              return "Password must Contains 8 Chracters";
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
                            labelText: "Password",
                            labelStyle: TextStyle(color: Color(0xFF6476fe)),
                            icon: Icon(
                              Icons.lock,
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

    if(formKey.currentState!.validate()){
                            Get.to(WelcomeBack(),
                                transition: Transition.leftToRight);}
                          },
                          child: Container(
                            height: Dim.Hight10 * 5,
                            width: 170,
                            child: Center(
                              child: Text(
                                "Get Started",
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
                        SizedBox(
                          height: Dim.Hight10 * 2,
                        ),



                        GestureDetector(  onTap: (){
                          Get.off(Forget(),transition: Transition.leftToRightWithFade);
                        },
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                                color: Color(0xFF6476fe),
                                letterSpacing: 1,
                                fontSize: Dim.Hight10 * 2),
                          ),
                        ),
                        SizedBox(height: Dim.Hight10*2,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dont have Account  !",
                              style: TextStyle(letterSpacing: 1),
                            ),
                            SizedBox(
                              width: Dim.Width10 / 2,
                            ),
                            GestureDetector(  onTap: (){
                              Get.off(SignUp(),transition: Transition.leftToRightWithFade);
                            },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Color(0xFF6476fe), letterSpacing: 1),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            )),
      ),
    );
  }
}
