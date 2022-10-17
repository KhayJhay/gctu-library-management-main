
import 'package:flutter/material.dart';

import '../constants.dart';
import '../home/homepage.dart';
import 'login_page.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({Key? key}) : super(key: key);

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: _width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(150)),
                ),
                child: ClipRRect(
                  child: Image.asset('assets/patterns/Reuss.png',
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(150)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Text('Sign Up', style: TextStyle(
                    fontFamily: 'Poppins-Bold',
                    color: Color(0xFF486A74),
                    fontSize: 26),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name",style: TextStyle(
                          fontFamily: 'Poppins-Medium',
                          color: Colors.black54,
                          fontSize: 18),),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 58,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Eg. John Doe",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Email",style: TextStyle(
                          fontFamily: 'Poppins-Medium',
                          color: Colors.black54,
                          fontSize: 18),),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 58,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Eg. johndoe@gmail.com",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Phone number",style: TextStyle(
                          fontFamily: 'Poppins-Medium',
                          color: Colors.black54,
                          fontSize: 18),),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 58,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Eg. 024-123-4567",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Password",style: TextStyle(
                          fontFamily: 'Poppins-Medium',
                          color: Colors.black54,
                          fontSize: 18),),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 58,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Eg. Enter correct password",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: RichText(
                          text: TextSpan(
                              text: "by pressing 'Sign Up' you agree to our ",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              children: [
                                TextSpan(
                                  text: "terms & conditions",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto Thin',
                                      color: Color(0xFF486A74),),
                                )
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                            },
                            child: Container(
                              height: 60,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xFF486A74),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: deepGreen.withOpacity(0.1),
                                      blurRadius: 10,
                                      spreadRadius: 3),
                                ],
                              ),
                              child: Center(child: Text("Sign Up",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Light'
                                ),)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Row(
                          children: [
                            Text('Have an account?',style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: 'Poppins-Regular'
                            ),),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                            }, child:Text('Log In',style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF486A74),
                                fontFamily: 'Poppins-Bold'
                            ),))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
