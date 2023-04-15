import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class steamInto extends StatelessWidget {
  const steamInto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
        padding: EdgeInsets.all(30),
        child: Row(
          children: [
            Container(
                height: Get.height / 2.5,
                child: Stack(
                  children: [
                    Image.asset("images/textBack.png"),
                    Positioned(
                      left: Get.width / 9.5,
                      top: Get.width / 4.5,
                      child: DefaultTextStyle(
                        style: TextStyle(
                          color: HexColor("#E2AC0D"),
                          fontSize: 20.0,
                          fontFamily: 'Bobbers',
                        ),
                        child: SizedBox(
                          width: Get.width / 2,
                          child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText(
                                  'Hello !! I Am Steamy. Help me collect my treasure by completing levels',
                                  textAlign: TextAlign.center,
                                  speed: Duration(milliseconds: 130)),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Image.asset("images/robo.png"),
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgroundflou.png"))),
      ),
    );
  }
}
