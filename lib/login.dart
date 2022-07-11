import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/login.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 125, left: 35),
                  child: Text(
                    "Well come \n Log in",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  )),
              SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 35,
                      left: 35,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 30),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sign In",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                )),
                            CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "register");
                                  },
                                  child: Text("Sign Up",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          decoration:
                                              TextDecoration.underline))),
                              TextButton(
                                  onPressed: () {},
                                  child: Text("Forget Password",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          decoration:
                                              TextDecoration.underline)))
                            ])
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
