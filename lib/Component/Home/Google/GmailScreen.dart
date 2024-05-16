import 'package:flutter/material.dart';
class GmailValidation extends StatefulWidget {
  const GmailValidation({super.key});

  @override
  State<GmailValidation> createState() => _GmailValidationState();
}

class _GmailValidationState extends State<GmailValidation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xfff0f4f8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 400,
              width: 900,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    width: 450,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Assets/Image/Google_Icon.png'),
                            )
                          ),

                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    ));
  }
}


