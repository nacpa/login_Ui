import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bikes extends StatelessWidget {
   Bikes({required this.adrs}) ;

   final String adrs;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orangeAccent,
          boxShadow: [
            BoxShadow(
                offset: Offset(2,2),
                blurRadius: 2,
                spreadRadius: 2,
                color: Colors.grey.shade400)
          ],
          image: DecorationImage(
              image: AssetImage(adrs), fit: BoxFit.fitWidth)),
    );
  }
}
