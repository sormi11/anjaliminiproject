import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sormimini/inprogresspage.dart';
import 'package:sormimini/orderpage.dart';
import 'package:sormimini/user.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
final _Passcontroler = TextEditingController();
class _LoginPageState extends State<LoginPage> {
  @override
    
    
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/vegbg.jpeg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Opacity(
            opacity: 0.6,
            child: Container(
              color: Colors.black,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(30),
              child: Card(
                // color: ThemeColors.themeGrey,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Username",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        decoration: BoxDecoration(
                            //    color: ThemeColors.themeLightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Username",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        decoration: BoxDecoration(
                            //   color: ThemeColors.themeLightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText: "Password",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                            ),
                            onPressed: () {
                              if(_Passcontroler.text == '12345678'){
      // wrong call in wrong place!
      Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Userpage(),
                                  ));
}
                          
    else{
    showDialog(context: context,  builder: (BuildContext context) => AlertDialog(
                                title: const Text('Invalid Password che loda!!'),));
  
  }
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Orderpage(),
                                  ));
                            },
                            child: Text(
                              "LOGIN",
                              //  style: TextStyle(color: Colors.green),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
