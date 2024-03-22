import 'package:bolt_app/screens/home_page.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscured = true;
   String errorTextval='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(200.0),
            child: Column(
              children: [
                TextField(
                           onChanged: (value){
                            setState(() {
                            if (value.contains('')) {
                              errorTextval ="Inavalid EmailAddress";
                            }else {
                              errorTextval ="";
                            }
                          }); },
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ), 
                SizedBox(height: 20),
                TextField(
                           onChanged: (value){
                            setState(() {
                            if (value!.isEmpty ||RegExp(r'^[\w-]+[0-9]+$').hasMatch(value!)) {
                              errorTextval ="Inavalid Password";
                            }else {
                              errorTextval ="";
                            }
                          }); },
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    labelText: "Enter Password",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(_isObscured
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    ),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
                SizedBox(
                  height: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => HomePage(),
    ),
  );
},
        
                  child: Text("Login"),
                  backgroundColor: Color.fromARGB(255, 230, 229, 223),
                ),
                SizedBox(height: 20,),
               
                
                RichText(
  text: const TextSpan(text: "Don't Have An Account?Register"),
  selectionRegistrar: SelectionContainer.maybeOf(context),
  selectionColor: const Color(0xAF6694e8),
),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
