import 'package:flutter/material.dart';
import 'package:workout_fitness/common/color_extension.dart';
import 'package:workout_fitness/common_widget/Text_field.dart';
import 'package:workout_fitness/common_widget/border_button.dart';
import 'package:workout_fitness/common_widget/button_style.dart';
import 'package:workout_fitness/view/login/register_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://th.bing.com/th/id/R.f83f11f0a21046a28e95e3c89f114da0?rik=0JnyVZLiMwFCtQ&pid=ImgRaw&r=0"), // Replace with your image path
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 255, 255, 255)
                      .withOpacity(0.2), // Shadow color
                  spreadRadius: 5, // Shadow spread radius
                  blurRadius: 10, // Shadow blur radius
                  offset: Offset(0, 5), // Shadow offset from top
                ),
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'Welcome to Our App',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: TColor.white,
                        fontFamily: "BlackOpsOne"),
                  ),
                  SizedBox(
                    height: 190,
                  ),
                  TextFieldWidget(
                    hinttext: "Username or Password",
                    ispass: false,
                  ),
                  SizedBox(height: 10),
                  TextFieldWidget(
                    hinttext: "Password",
                    ispass: true,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget your Password ? ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: TColor.white),
                      )),
                  SizedBox(height: 5),
                  BorderButton(
                    title: "Login",
                    onPressed: () {},
                  ),
                  SizedBox(height: 10),
                  Button_Style(
                    title: "Register",
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
