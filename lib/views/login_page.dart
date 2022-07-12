import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/utils/text_style.dart';
import 'package:headspace_clone/views/signup_page.dart';
import 'package:headspace_clone/widgets/button.dart';
import 'package:headspace_clone/widgets/logo_container.dart';
import 'package:headspace_clone/widgets/textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff101340),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: LogoName(
                height: 20,
                width: 20,
                textSize: 18,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Login", style: AppTextStyle.headline3),
            SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'New to Headspace? ',
                      style: AppTextStyle.subtitle2),
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()));
                        },
                      text: 'Sign up for free ',
                      style: AppTextStyle.inkWellLink),
                ]),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CommonTextField(
                    // validator: validateButton(_firstnameController.text),
                    labelText: "Email Address",
                    controller: _emailController,
                    textInputType: TextInputType.name,
                  ),
                  CommonTextField(
                    // validator: validateButton(_lastnameController.text),
                    labelText: "Password",
                    controller: _passwordController,
                    textInputType: TextInputType.name,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20),
                  child: Text(
                    "Forgot your password?",
                    style: AppTextStyle.inkWell,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MaterialCommonButton(
              isImage: false,
              onPressed: () {},
              size: MediaQuery.of(context).size.width * 0.9,
              color: Color.fromARGB(255, 60, 63, 104),
              text: "Login",
            ),
            SizedBox(
              height: 15,
            ),
            MaterialCommonButton(
              isImage: false,
              onPressed: () {},
              size: MediaQuery.of(context).size.width * 0.9,
              color: Color.fromARGB(255, 60, 63, 104),
              text: "Log in with SSO",
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialCommonButton(
                    isImage: true,
                    onPressed: () {},
                    size: MediaQuery.of(context).size.width * 0.2,
                    color: Colors.white,
                    image: Image.asset(
                      "assets/images/google.png",
                      height: 30,
                    ),
                  ),
                  MaterialCommonButton(
                    isImage: true,
                    onPressed: () {},
                    size: MediaQuery.of(context).size.width * 0.2,
                    color: Color(0xff1877F2),
                    image: Image.asset(
                      "assets/images/facebook.png",
                      height: 30,
                    ),
                  ),
                  MaterialCommonButton(
                    isImage: true,
                    onPressed: () {},
                    size: MediaQuery.of(context).size.width * 0.2,
                    color: Colors.black,
                    image: Image.asset(
                      "assets/images/apple.png",
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                  MaterialCommonButton(
                    isImage: true,
                    onPressed: () {},
                    size: MediaQuery.of(context).size.width * 0.2,
                    color: Color(0xff1ED760),
                    image: Image.asset(
                      "assets/images/spotify.png",
                      height: 40,
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
