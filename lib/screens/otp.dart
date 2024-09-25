import 'package:flutter/material.dart';
import 'dart:async';
import 'package:give_thanks/screens/pass.dart';

class ConfirmOtp extends StatefulWidget {
  const ConfirmOtp({Key? key}) : super(key: key);

  @override
  State<ConfirmOtp> createState() => _ConfirmOtpState();
}

class _ConfirmOtpState extends State<ConfirmOtp> {
  String code = '';
  int timerSeconds = 20;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timerSeconds > 0) {
          timerSeconds--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void validateOtp() {
    if (code == '958273') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const EnterPassword(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Wrong OTP'),
          content: const Text('Please confirm your credentials again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  code = '';
                });
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A73E8), // Background color
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'images/logo2.png', // Replace with your logo image path
                      height: 80,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'A verification has been sent to:\n josephkoroma01@gmail.com\n Kindly enter the six digit code, to verify the number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 6; i++)
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        color: i < code.length ? Colors.white : Colors.transparent,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        i < code.length ? code[i] : '',
                        style: const TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 140),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    validateOtp();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Verify',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  'Send code again in $timerSeconds seconds',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  onChanged: (value) {
                    setState(() {
                      code = value;
                    });

                    if (value.length == 6) {
                      validateOtp();
                    }
                  },
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "",
                    hintText: "Enter OTP",
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
