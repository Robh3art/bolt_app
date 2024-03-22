import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscured = true;
  String errorTextval='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(        
        child: Container(
          child: (
            SafeArea(child: 
            Padding(padding: const EdgeInsets.all(50),
                    child: (Column(
                      children: [
                        Icon(Icons.person,size: 200,),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "FirstName",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                            errorText: errorTextval.isEmpty?null:errorTextval),
                             keyboardType: TextInputType.emailAddress
                          ),    

                           SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            labelText: " LastName",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                            errorText: errorTextval.isEmpty?null:errorTextval),
                             keyboardType: TextInputType.emailAddress
                          ),       

                           SizedBox(height: 10,),
                        TextField(
                          onChanged: (value){
                            setState(() {
                            if (value.contains('')) {
                              errorTextval ="Inavalid PhoneNumber";
                            }else {
                              errorTextval ="";
                            }
                          });},
                          decoration: InputDecoration(
                            labelText: " Phonenumber",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.phone),
                            errorText: errorTextval.isEmpty?null:errorTextval),
                             keyboardType: TextInputType.emailAddress
                          ),  

                           SizedBox(height: 10,),
                        TextField(
                          onChanged: (value){
                            setState(() {
                            if (value.contains('')) {
                              errorTextval ="Inavalid EmailAddress";
                            }else {
                              errorTextval ="";
                            }
                          });},
                          decoration: InputDecoration(
                            labelText: "Enter Your Email",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email),
                            errorText: errorTextval.isEmpty?null:errorTextval),
                             keyboardType: TextInputType.emailAddress
                          ),                   

                           SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            errorText: errorTextval.isEmpty?null:errorTextval),
                             keyboardType: TextInputType.emailAddress
                          ),  

                           SizedBox(height: 10,),
                        TextField(
                          onChanged: (value){
                            setState(() {
                            if (value.contains('')) {
                              errorTextval ="Password Doesn't Match";
                            }else {
                              errorTextval ="";
                            }
                          });},
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            errorText: errorTextval.isEmpty?null:errorTextval),
                             keyboardType: TextInputType.emailAddress
                          ),                              
                                                       
                      ],
                    )),
            ))
          ),
        ),
      ),
    );
  }
}
