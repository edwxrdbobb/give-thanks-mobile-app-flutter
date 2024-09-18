import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:give_thanks/screens/otp.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({Key? key}) : super(key: key);

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  DateTime? _selectedDate;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set background color to blue
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Image.asset('images/logo2.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: FormBuilder(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(labelText: 'Name'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(labelText: 'Email'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          title: Text('Date of Birth'),
                          subtitle: _selectedDate != null
                              ? Text(
                                  '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}')
                              : null,
                          onTap: () async {
                            final DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );
                            if (pickedDate != null) {
                              setState(() {
                                _selectedDate = pickedDate;
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(
                height: 70,
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                       Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConfirmOtp()),
                  );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orangeAccent, // Gold color
                        minimumSize: Size(200, 50), // Specific width and height
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white, // White text color
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
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
