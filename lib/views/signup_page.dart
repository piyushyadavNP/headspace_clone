import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/utils/text_style.dart';
import 'package:headspace_clone/widgets/button.dart';
import 'package:headspace_clone/widgets/logo_container.dart';
import 'package:headspace_clone/widgets/textField.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff101340),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: LogoName(
                height: 20,
                width: 20,
                textSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Sign Up", style: AppTextStyle.headline2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.center,
                "Create an account to access meditations, sleep,\n sounds, music to help you focus, and more.",
                style: AppTextStyle.subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have an account?",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: GestureDetector(
                      child: Text(
                        "Login",
                        style: AppTextStyle.inkWellLink,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Button(
              labelText: "First Name",
              controller: null,
              textInputType: TextInputType.name,
            ),
            Button(
              labelText: "Last Name",
              controller: null,
              textInputType: TextInputType.name,
            ),
            Button(
              labelText: "Email Address",
              controller: null,
              textInputType: TextInputType.emailAddress,
            ),
            Button(
              labelText: "Password",
              controller: null,
              textInputType: TextInputType.visiblePassword,
            ),
            Padding(
              padding: const EdgeInsets.all(9.5),
              child: GestureDetector(
                onTap: () {},
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'By continuing, you agree to Headspace\'s\ ',
                        style: AppTextStyle.subtitle2),
                    TextSpan(
                        text: 'Terms And Conditions ',
                        style: AppTextStyle.inkWellLink),
                    TextSpan(text: 'and ', style: AppTextStyle.subtitle2),
                    TextSpan(
                        text: 'Privacy Policy.',
                        style: AppTextStyle.inkWellLink)
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialCommonButton(
                isImage: false,
                color: Colors.blue,
                text: "Create an account",
                onTap: () {},
                size: MediaQuery.of(context).size.width * 0.9),
            SizedBox(
              height: 15,
            ),
            MaterialCommonButton(
                isImage: false,
                color: Color.fromARGB(255, 60, 63, 104),
                text: "Create with SSO",
                onTap: () {},
                size: MediaQuery.of(context).size.width * 0.9),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                textAlign: TextAlign.center,
                "Link an account to log in faster in the future",
                style: AppTextStyle.subtitle2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialCommonButton(
                      isImage: true,
                      image: Image.asset("assets/images/eyeopen.png"),
                      color: Color.fromARGB(255, 60, 63, 104),
                      onTap: () {},
                      size: MediaQuery.of(context).size.width * 0.25),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialCommonButton(
                      isImage: true,
                      image: Image.asset("assets/images/eyeopen.png"),
                      color: Color.fromARGB(255, 60, 63, 104),
                      onTap: () {},
                      size: MediaQuery.of(context).size.width * 0.25),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialCommonButton(
                      isImage: true,
                      image: Image.asset("assets/images/eyeopen.png"),
                      color: Color.fromARGB(255, 60, 63, 104),
                      onTap: () {},
                      size: MediaQuery.of(context).size.width * 0.25),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
