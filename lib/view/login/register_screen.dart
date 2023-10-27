import 'package:flutter/material.dart';
import 'package:workout_fitness/common/color_extension.dart';
import 'package:workout_fitness/common_widget/Text_field.dart';
import 'package:workout_fitness/common_widget/border_button.dart';
import 'package:workout_fitness/common_widget/button_style.dart';
import 'package:workout_fitness/view/login/on_boarding_view.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.thelostgentleman.co.uk/wp-content/uploads/2016/03/muscle-tone.jpg"), // Replace with your image path
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
                    height: 130,
                  ),
                  TextFieldWidget(
                    hinttext: "Username",
                    ispass: false,
                  ),
                  TextFieldWidget(
                    hinttext: "E-mail",
                    ispass: false,
                  ),
                  TextFieldWidget(
                    hinttext: "Phone",
                    ispass: false,
                  ),
                  TextFieldWidget(
                    hinttext: "Password",
                    ispass: true,
                  ),
                  TextFieldWidget(
                    hinttext: "Conform Password",
                    ispass: true,
                  ),
                  SizedBox(height: 5),
                  Button_Style(
                    title: "Register",
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnBoardingView()),
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
