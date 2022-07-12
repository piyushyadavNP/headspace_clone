import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/utils/text_style.dart';
import 'package:headspace_clone/views/login_page.dart';
import 'package:headspace_clone/views/navbar_page.dart';
import 'package:headspace_clone/widgets/button.dart';
import 'package:headspace_clone/widgets/logo_container.dart';
import 'package:headspace_clone/widgets/textField.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _paswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isValidate = false;
  bool formIsValid = false;

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
              height: 40,
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
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              onChanged: () => setState(
                  () => formIsValid = _formKey.currentState!.validate()),
              child: Column(
                children: [
                  CommonTextField(
                    // validator: validateButton(_firstnameController.text),
                    labelText: "First Name",
                    controller: _firstnameController,
                    textInputType: TextInputType.name,
                  ),
                  CommonTextField(
                    // validator: validateButton(_lastnameController.text),
                    labelText: "Last Name",
                    controller: _lastnameController,
                    textInputType: TextInputType.name,
                  ),
                  CommonTextField(
                    // validator: validateButton(_emailController.text),
                    labelText: "Email Address",
                    controller: _emailController,
                    textInputType: TextInputType.emailAddress,
                  ),
                  CommonTextField(
                    // validator: validateButton(_paswordController.text),
                    labelText: "Password",
                    controller: _paswordController,
                    textInputType: TextInputType.visiblePassword,
                  ),
                ],
              ),
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
                onPressed: _isValidate
                    ? () {
                        print("Valid");
                      }
                    : null,
                size: MediaQuery.of(context).size.width * 0.9),
            SizedBox(
              height: 15,
            ),
            MaterialCommonButton(
                isImage: false,
                color: Color.fromARGB(255, 60, 63, 104),
                text: "Create with SSO",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage()));
                },
                size: MediaQuery.of(context).size.width * 0.9),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
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
                      image: Image.asset(
                        "assets/images/google.png",
                        height: 30,
                      ),
                      color: Colors.white,
                      onPressed: () {},
                      size: MediaQuery.of(context).size.width * 0.25),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialCommonButton(
                      isImage: true,
                      image: Image.asset(
                        "assets/images/facebook.png",
                        height: 30,
                      ),
                      color: Color(0xff1877F2),
                      onPressed: () {},
                      size: MediaQuery.of(context).size.width * 0.25),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialCommonButton(
                      isImage: true,
                      image: Image.asset(
                        "assets/images/apple.png",
                        height: 30,
                        color: Colors.white,
                      ),
                      color: Color.fromARGB(255, 15, 15, 15),
                      onPressed: () {},
                      size: MediaQuery.of(context).size.width * 0.25),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  validateButton(value) {
    if (value == null || value.isEmpty) {
      return 'Please Enter Some Text';
    }
    return null;
  }
}
