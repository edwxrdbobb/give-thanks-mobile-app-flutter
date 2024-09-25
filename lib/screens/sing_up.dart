import 'package:flutter/material.dart';
import 'package:give_thanks/screens/signup1.dart';
<<<<<<< HEAD
=======
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
>>>>>>> 0185a1e86131324b6af556d0016dbdb9cf186509

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
>>>>>>> 0185a1e86131324b6af556d0016dbdb9cf186509

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Center(
=======
      backgroundColor: Colors.blue, // Set background color to blue
      body: SafeArea(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
>>>>>>> 0185a1e86131324b6af556d0016dbdb9cf186509
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
<<<<<<< HEAD
              const SizedBox(height: 50), // Adjust spacing as needed
              Image.asset('images/logo2.png', width: 150, height: 150), // Adjust logo size if needed
              const SizedBox(height: 20),
              const Text(
                "Let's us change the world together",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'One gratitude at a time',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: goldColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 450,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Google sign-in logic here
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.account_circle), // Replace with Google icon if available
                  label: const Text(
                    'Continue with Google',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 450,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp1()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 450,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Explore Give Thanks logic here
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
=======
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
>>>>>>> 0185a1e86131324b6af556d0016dbdb9cf186509
                    ),
                  ),
                  child: const Text(
                    'Explore Give Thanks',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
<<<<<<< HEAD
              const SizedBox(height: 30),
              
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    text: 'By signing up, you agree to our ',
                    style: TextStyle(color: Colors.white70),
                    children: [
                      TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
=======

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
>>>>>>> 0185a1e86131324b6af556d0016dbdb9cf186509
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 13),
                          child: Text('Explore Give Thanks'),
                        ), // Text
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.white70),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to login screen
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(5), // Adjust the radius for roundness
                child: Container(
                  width: 100, // Set the width of the divider
                  height: 10, // Set the height (thickness) of the divider
                  color: Colors.black, // Set the color of the divider
                ),
              ),
<<<<<<< HEAD

              SizedBox(
                height: 9,
              )


              
=======

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
>>>>>>> 0185a1e86131324b6af556d0016dbdb9cf186509
            ],
          ),
        ),
      ),
    );
  }
}
