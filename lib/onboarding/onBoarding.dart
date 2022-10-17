import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../authentication/login_page.dart';
class onBoardingPage extends StatelessWidget {
  const onBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Color(0xFFFAFAFA),
      resizeToAvoidBottomInset: false,
      body: Container(
        height: _height,
        width: _width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/patterns/Reuss.png'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 30),
          child: Container(
            height: _height * 0.2,
            width: _width,
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.only(topRight: Radius.circular(80), bottomLeft: Radius.circular(80),),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 16,
                  color: Colors.black.withOpacity(0.4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset('assets/pngs/bglogo.png',height: 130,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Divider(color: Colors.grey,thickness: 0.15,),
                ),
                Lottie.asset('assets/lotties/lot1.json', height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60),
                  child: Text("GCTU ONLINE BOOK LIBRARY"
                      "\n Ordering and Borrowing of books just got easier",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        color: Colors.grey,
                        fontSize: 16,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Divider(color: Colors.grey,thickness: 0.15,),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Container(
                      width: 250,
                      height: _height <= 700 ? 40 : 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF486A74),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: "Poppins-Light"),
                          )),
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
