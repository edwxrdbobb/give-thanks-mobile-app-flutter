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
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
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

  void addCodeDigit(String digit) {
    if (code.length < 6) {
      setState(() {
        code += digit;
      });
      if (code.length == 6) {
        if (code == '958273') {
          Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EnterPassword()),
                  );
        } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Wrong OTP'),
              content: Text('Please confirm your credentials again.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      code = '';
                    });
                  },
                  child: Text('OK'),
                ),
              ],
            ),
          );
        }
      }
    }
  }

  void clearCode() {
    if (code.isNotEmpty) {
      setState(() {
        code = code.substring(0, code.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 70),
              const Text(
                'Enter code',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
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
                        color: i < code.length ? Colors.amber : Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        i < code.length ? code[i] : '',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 140),
              Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  'Send code again in $timerSeconds seconds',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 5),
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => addCodeDigit('1'),
                    child: Text('1', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => addCodeDigit('2'),
                    child: Text('2', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => addCodeDigit('3'),
                    child: Text('3', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => addCodeDigit('4'),
                    child: Text('4', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => addCodeDigit('5'),
                    child: Text('5', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => addCodeDigit('6'),
                    child: Text('6', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => addCodeDigit('7'),
                    child: Text('7', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => addCodeDigit('8'),
                    child: Text('8', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => addCodeDigit('9'),
                    child: Text('9', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => addCodeDigit('+*#'),
                    child: Text('#', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => addCodeDigit('0'),
                    child: Text('0', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: clearCode,
                    child: Text('X', style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(50, 50), // Set the minimum size for all buttons
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
