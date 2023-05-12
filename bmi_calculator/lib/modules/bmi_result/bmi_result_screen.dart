import 'dart:ui';

import 'package:flutter/material.dart';

class BMIRE extends StatelessWidget {

  final int age;
  final bool isMale;
  final int result;
  BMIRE({
    required this.age,
    required this.result,
    required this.isMale,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text('BMI_Result')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender=${isMale ? 'Male' : 'Female'}',style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
            Text('Age=$age',style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
            Text('Result=$result',style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
            
          ],
        ),
      ),
    );
  }
}