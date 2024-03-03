import 'package:app/utils/global.dart';
import 'package:app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: darkBackgroundColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 5),
            Image(
              image: AssetImage("assets/images/logo.png"),
              height: 60,
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 42,
              child: TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(fontSize: 13, color: Colors.white),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1, horizontal: 14),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 95, 95, 95),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 95, 95, 95),
                        )),
                    hintText: "Phone number, email or username",
                    hintStyle: TextStyle(fontSize: 13, color: secondaryColor)),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 42,
              child: TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(fontSize: 13, color: Colors.white),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1, horizontal: 14),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 95, 95, 95),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 95, 95, 95),
                        )),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 13, color: secondaryColor)),
                obscureText: true,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(flex: 5, child: SizedBox()),
                Text("Forgot Password?", style: TextStyle(color: primaryColor))
              ],
            ),
            SizedBox(height: 30),
            InkWell(
                onTap: () =>
                    {Navigator.of(context).pushNamed(MyRoutes.HomepageRoutes)},
                child: Container(
                  alignment: Alignment.center,
                  height: 42,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    color: primaryColor,
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )),
            Spacer(flex: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                    style: TextStyle(color: secondaryColor)),
                Text("SignUp", style: TextStyle(color: primaryColor)),
              ],
            ),
            Spacer(flex: 2)
          ]),
    ))));
  }
}
