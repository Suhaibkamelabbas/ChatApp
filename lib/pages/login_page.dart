import 'package:flutter/material.dart';
import 'package:scholar_chat/constants.dart';
import 'package:scholar_chat/pages/register_page.dart';
import 'package:scholar_chat/widgets/custom_botton.dart';
import 'package:scholar_chat/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPraimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomBotton(
                  text: 'LOGIN',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\t have an account ?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xffC7EDE6),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
