import 'package:flutter/material.dart';
import 'package:give_thanks/screens/signup1.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Color goldColor = Color.fromRGBO(255, 215, 0, 1.0); // RGB values for gold color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set background color to blue
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Add your image widget here
              Image.asset('images/logo2.png'),
              const Text(
                "Let's us change the \n    world together",
                style: TextStyle(color: Colors.white, fontSize: 46, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
        Text(
          'One gratitude at a time',
          style: TextStyle(color: goldColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 30),
    SizedBox(
      width: 430,
      height: 42,
      child: ElevatedButton(
        onPressed: () {
          // Add your button 1 onPressed logic here
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Colors.white, // Text color
        ),
        child:  const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            // Icon(Icons.google), 
            SizedBox(width: 8), // Space between the icon and text
            Text('Continue with Google', style: TextStyle(fontWeight: FontWeight.bold),), // Text
          ],
        ),
      ),
    ),

    const SizedBox(height: 20),
    SizedBox(
      width: 430,
      height: 42,
      child: ElevatedButton(
        onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUp1()),
                  );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Colors.white, // Text color
        ),
        child: const Text('Create Account', style: TextStyle(fontWeight: FontWeight.bold, ),), // Text
      ),
    ),
    const SizedBox(height: 20),
    SizedBox(
      width: 430,
      height: 42,
      child: ElevatedButton(
        onPressed: () {
          // Add your button 3 onPressed logic here
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 11, 136, 239), // Text color
          minimumSize: const Size(200, 50), // Width and height of the button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Rounded corners
            side: BorderSide(color: Colors.white, width: 2), // White border
          ),
        ),
        child: const Text('Explore Give Thanks'), // Text
      ),
    ),

    const SizedBox(height: 20),
            const  Text.rich(
                TextSpan(
                  text: 'By signing up, you agree to our ',
                  style: const TextStyle(color: Color.fromARGB(255, 224, 220, 220)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white
                      ),
                    ),
                    const TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?', style: TextStyle(color: const Color.fromARGB(255, 224, 220, 220)),),
                    TextButton(
                      onPressed: () {
                        // Add your login onPressed logic here
                      },
                      child: Text(
                        ' Login',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             const SizedBox(
                height: 15,
              )

            ],
          ),
        ),
      ),
    );
  }
}
