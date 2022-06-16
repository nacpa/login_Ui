import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/SignIn.dart';
import 'package:login_ui/Pages/Welcome.dart';
import 'package:login_ui/Pages/Welcomeback.dart';

import '../consts/Dimension.dart';
enum SingingCharacter { Male, female }
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  SingingCharacter? _character = SingingCharacter.Male;
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children: [

          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: width / 10, right: width / 10),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: Dim.Hight/7,),
                    Container(height: Dim.Hight10*15,width: double.maxFinite,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/new.png"))),),
                    Text("Hello there , Sign up to continue",style: TextStyle(color: Colors.grey),),
                    TextFormField(maxLines: 1,
                      validator: (val) {
                        if (val!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(val)) {
                          return "Enter Name";
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
                        labelText: "Name",
                        labelStyle: TextStyle(color: Color(0xFF6476fe)),
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFF6476fe),
                        ),
                        iconColor: Color(0xFF6476fe),
                      ),
                    ),
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
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty ||
                            !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                .hasMatch(val)) {
                          return "Enter Phone No";
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
                        labelText: "Phone Number",
                        labelStyle: TextStyle(color: Color(0xFF6476fe)),
                        icon: Icon(
                          Icons.phone,
                          color: Color(0xFF6476fe),
                        ),
                        iconColor: Color(0xFF6476fe),
                      ),
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(val)) {
                          return "Enter Address";
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
                        labelText: "Address",
                        labelStyle: TextStyle(color: Color(0xFF6476fe)),
                        icon: Icon(
                          Icons.location_on,
                          color: Color(0xFF6476fe),
                        ),
                        iconColor: Color(0xFF6476fe),
                      ),
                    ),
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
                    Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title:  Text('Male'),
                          leading: Radio<SingingCharacter>(hoverColor: Color(0xFF6476fe) ,focusColor: Color(0xFF6476fe),activeColor: Color(0xFF6476fe),
                            value: SingingCharacter.Male,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title:  Text('Female'),
                          leading: Radio<SingingCharacter>(activeColor: Color(0xFF6476fe),
                            value: SingingCharacter.female,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                    GestureDetector(
                      onTap: () {

                        if(formKey.currentState!.validate()){
                          Get.to(WelcomeBack(), transition: Transition.leftToRight);}
                      },
                      child: Container(
                        height: Dim.Hight10 * 5,
                        width: 170,
                        child: Center(
                          child: Text(
                            "Sign Up",
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
                    ),SizedBox(height: Dim.Hight10,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already Registered !",style: TextStyle(letterSpacing: 1),),
                        SizedBox(width: Dim.Width10/2,),
                        GestureDetector(onTap: (){
                          Get.off(SignIn(),transition: Transition.leftToRightWithFade);
                        },
                          child: Text(
                            "Log In",
                            style: TextStyle(color: Color(0xFF6476fe),letterSpacing: 1),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),

        ],
      ),
    );
  }
}
