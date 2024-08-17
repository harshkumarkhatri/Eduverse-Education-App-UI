import 'package:eduverse_education_app_ui/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(
                0xffE9F0FF,
              ),
              Color(
                0xffD7ECFF,
              ),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              "assets/landing_Screen_bottom_image.png",
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3.5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 64,
                        child: Image.asset(
                          "assets/eduverse_logo.png",
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Text(
                        "EduVerse",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Color(
                            0xff4178F3,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Empowering Minds, Igniting Futures.",
                    style: TextStyle(
                      color: Color(
                        0xff030303,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(
                            0xff1B08DA,
                          ),
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
