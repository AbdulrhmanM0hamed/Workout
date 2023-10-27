import 'package:flutter/material.dart';
import 'package:workout_fitness/common/color_extension.dart';
import 'package:workout_fitness/common_widget/border_button.dart';
import 'package:workout_fitness/common_widget/button_style.dart';
import 'package:workout_fitness/common_widget/round_button.dart';
import 'package:workout_fitness/view/login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColorFiltered(
      colorFilter:
          ColorFilter.mode(Color.fromARGB(78, 68, 66, 66), BlendMode.darken),
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://img4.goodfon.com/wallpaper/nbig/9/b6/bodibilder-press-bodybuilder-tattoo-tatuirovka-abs-muscle-my.jpg"),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Spacer(
                    flex: 9,
                  ),
                  Text(
                    "Welcome",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Quicksand",
                        letterSpacing: 4),
                  ),
                  Text(
                    "To Sprint App",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Quicksand",
                        letterSpacing: 2),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  BorderButton(
                    title: "Login",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Button_Style(
                    onpressed: () {},
                    title: "Try Now",
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
