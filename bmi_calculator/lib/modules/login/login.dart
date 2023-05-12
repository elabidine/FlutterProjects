import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  var emailControler = TextEditingController();
  var passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                  
                    controller: emailControler,
                    keyboardType: TextInputType.emailAddress,
                    onSubmitted: ((value) {
                      print(value);
                    }),
                    onChanged: ((value) {
                      print(value);
                    }),
                    decoration: InputDecoration(
                      labelText: 'Email Adress',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                
                  defaultTextField(
                   controller: passwordControler,
                   textInputType: TextInputType.visiblePassword,
                   text: 'Password', 
                   prefixIcon: Icon(Icons.lock),
                   suffixIcon: Icon(Icons.remove_red_eye_sharp),
                   ),
                   
                  SizedBox(
                    height: 25,
                  ),
                  defaultbutton(
                      function: () {
                        print(emailControler.text);
                        print(passwordControler.text);
                      },
                      text: 'login'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have account? '),
                      TextButton(
                        child: Text('Register now'),
                        onPressed: (() {}),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
