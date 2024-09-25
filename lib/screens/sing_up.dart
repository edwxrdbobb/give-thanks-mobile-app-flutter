import 'package:flutter/material.dart';
import 'package:give_thanks/screens/signup1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return new IconButton(
        // Use the MdiIcons class for the IconData
        icon: new Icon(MdiIcons.sword),
        onPressed: () {
          print('Using the sword');
        });
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

    //The google signup provider
  // Future<void> signUpWithEmailPassword() async {
  //   try {
  //     UserCredential userCredential =
  //         await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     print("Signed up: ${userCredential.user?.email}");
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }
  
  Color goldColor =
      const Color.fromRGBO(255, 215, 0, 1.0); // RGB values for gold color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set background color to blue
      body: SafeArea(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //wwraping the signup contents in a container
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    //The logo
                    Image.asset(
                      'images/logo2.png',
                      width: 250,
                    ),

                    const Text(
                      "Let's us change the world together",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'One gratitude at a time',
                      style: TextStyle(
                          color: goldColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              //This container contain the Continue With google provide and Create Account Button also and the Explpre and as Annonimus use button
              Container(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add your button 1 onPressed logic here
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              MdiIcons.google,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 8,
                            ), // Space between the icon and text
                            const Text(
                              'Continue with Google',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ), // Text
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp1()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white, // Text color
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 13),
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ), // Text
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button 3 onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color.fromARGB(
                              255, 11, 136, 239), // Text color
                          minimumSize: const Size(
                              200, 50), // Width and height of the button
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // Rounded corners
                            side: const BorderSide(
                                color: Colors.white, width: 2), // White border
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 13),
                          child: Text('Explore Give Thanks'),
                        ), // Text
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Column(
                  children: [
                    const Text.rich(
                      TextSpan(
                        text: 'By signing up, you agree to our ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 224, 220, 220)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white),
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account?',
                            style: TextStyle(
                              color: Color.fromARGB(255, 224, 220, 220),
                              fontSize: 17,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Add your login onPressed logic here
                            },
                            child: const Text(
                              ' Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
