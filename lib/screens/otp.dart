import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ConfirmOtp extends StatefulWidget {
  const ConfirmOtp({super.key});

  @override
  State<ConfirmOtp> createState() => _ConfirmOtpState();
}

class _ConfirmOtpState extends State<ConfirmOtp> {
  //
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Header of the auths
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "Verification",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 30),
                    child: Image.asset("assets/fp.jpg"),
                  ),
                ],
              ),
            ),

            // the login imput form field
            FormBuilder(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const Text(
                    "Enter the verification code sent to your number",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //OTP
                  OtpTextField(
                    numberOfFields: 5,
                    borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //verify button
                  CupertinoButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const ChangePasswordPage()));
                    },
                    color: const Color.fromRGBO(29, 69, 135, 1),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text("verify"),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  const Text("OR"),

                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Image.asset("assets/googleicon.jpg"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        child: Image.asset("assets/facebookicon.jpg"),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Remember the password?",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const SignUpPage()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
