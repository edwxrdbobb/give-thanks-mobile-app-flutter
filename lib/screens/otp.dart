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

  void addCodeDigit(String digit) {
    if (code.length < 6) {
      setState(() {
        code += digit;
      });
      if (code.length == 6) {
        if (code == '958273') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EnterPassword()),
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //the input field container
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.white, width: 2),
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //     child: ClipRRect(
                    //       borderRadius: BorderRadius.circular(10),
                    //       child: IconButton(
                    //         icon: const Icon(Icons.arrow_back,
                    //             color: Colors.white),
                    //         onPressed: () {
                    //           Navigator.pop(context);
                    //         },
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    const Text(
                      'Enter code',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),

                    //description
                    const Text(
                      'A 6 digits code has been sent to your email',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < 6; i++)
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  i < code.length ? Colors.amber : Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              i < code.length ? code[i] : '',
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                      ],
                    ),
                    // const Center(
                    //   child: Text(
                    //     'Continue',
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: 20),
                    //   ),
                    // ),
                  ],
                ),

                //the number selection
                Container(
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Center(
                        child: Text(
                          'Send code again in $timerSeconds seconds',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () => addCodeDigit('1'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('1',
                                style: TextStyle(color: Colors.blue)),
                          ),
                          ElevatedButton(
                            onPressed: () => addCodeDigit('2'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('2',
                                style: TextStyle(color: Colors.blue)),
                          ),
                          ElevatedButton(
                            onPressed: () => addCodeDigit('3'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('3',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () => addCodeDigit('4'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('4',
                                style: TextStyle(color: Colors.blue)),
                          ),
                          ElevatedButton(
                            onPressed: () => addCodeDigit('5'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('5',
                                style: TextStyle(color: Colors.blue)),
                          ),
                          ElevatedButton(
                            onPressed: () => addCodeDigit('6'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('6',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () => addCodeDigit('7'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('7',
                                style: TextStyle(color: Colors.blue)),
                          ),
                          ElevatedButton(
                            onPressed: () => addCodeDigit('8'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('8',
                                style: TextStyle(color: Colors.blue)),
                          ),
                          ElevatedButton(
                            onPressed: () => addCodeDigit('9'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('9',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () => addCodeDigit('+*#'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('#',
                                style: TextStyle(color: Colors.blue)),
                          ),
                          ElevatedButton(
                            onPressed: () => addCodeDigit('0'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('0',
                                style: TextStyle(color: Colors.blue)),
                          ),
                          ElevatedButton(
                            onPressed: clearCode,
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50,
                                  50), // Set the minimum size for all buttons
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('X',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
