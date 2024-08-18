import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isCheckboxChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 22,
                ),
                SizedBox(
                  height: 40,
                  width: 42,
                  child: Image.asset(
                    "assets/eduverse_logo.png",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Create a\nnew account",
                  style: TextStyle(
                    color: Color(
                      0xff1E1F20,
                    ),
                    fontSize: 30,
                    height: 1.2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 3,
                  width: 24,
                  decoration: BoxDecoration(
                    color: const Color(
                      0xff4178F3,
                    ),
                    borderRadius: BorderRadius.circular(
                      2,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                const Text(
                  "Email or Phone number",
                  style: TextStyle(
                    color: Color(
                      0xff8F92A1,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                TextFormField(
                  style: const TextStyle(color: Color(0xff030319)),
                  cursorColor: const Color(0xff030319),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 24,
                    ),
                    fillColor: const Color(
                      0xff8F92A1,
                    ).withOpacity(.3),
                    filled: true,
                    hintText: "Enter Email or Phone number",
                    hintStyle: TextStyle(
                      color: const Color(0xff030319).withOpacity(
                        0.4,
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.check_rounded,
                      color: Color(
                        0xff38D79F,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    color: Color(
                      0xff8F92A1,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Color(0xff030319)),
                  cursorColor: const Color(0xff030319),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 24,
                    ),
                    fillColor: const Color(
                      0xff8F92A1,
                    ).withOpacity(.3),
                    filled: true,
                    hintText: "Enter password",
                    hintStyle: TextStyle(
                      color: const Color(0xff030319).withOpacity(
                        0.4,
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_rounded,
                      color: Color(
                        0xff8F92A1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Confirm password",
                  style: TextStyle(
                    color: Color(
                      0xff8F92A1,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Color(0xff030319)),
                  cursorColor: const Color(0xff030319),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 24,
                    ),
                    fillColor: const Color(
                      0xff8F92A1,
                    ).withOpacity(.3),
                    filled: true,
                    hintText: "Enter confirm password",
                    hintStyle: TextStyle(
                      color: const Color(0xff030319).withOpacity(
                        0.4,
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_rounded,
                      color: Color(
                        0xff8F92A1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 2),
                      height: 20,
                      width: 20,
                      child: Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            4,
                          ),
                        ),
                        activeColor: const Color(0xff1B08DA),
                        side: const BorderSide(
                          color: Color(
                            0xff8F92A1,
                          ),
                        ),
                        value: isCheckboxChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckboxChecked = !isCheckboxChecked;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "By creating an account, you agree to our ",
                          style: TextStyle(
                            color: Color(
                              0xff8F92A1,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            const snackBar = SnackBar(
                              content: Text('It will open a link'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: const Text(
                            "Terms and Conditions",
                            style: TextStyle(
                              color: Color(
                                0xff1B08DA,
                              ),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 76,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have a account? ",
                        style: TextStyle(
                          color: Color(
                            0xff8F92A1,
                          ),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          const snackBar = SnackBar(
                            content: Text('It will open a link'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            color: Color(
                              0xff1B08DA,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
