import 'package:flutter/material.dart';

class MyRegister extends StatelessWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/register.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 125, left: 35),
                  child: Text(
                    "Create Your \n Account",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  )),
              SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.40,
                      right: 35,
                      left: 35,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.lightBlueAccent,
                              filled: true,
                              hintText: "First Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.lightBlueAccent,
                              filled: true,
                              hintText: "Last Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.lightBlueAccent,
                              filled: true,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.lightBlueAccent,
                              filled: true,
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sign Up",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                )),
                            CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "login");
                                  },
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
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
