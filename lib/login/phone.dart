// ignore_for_file: prefer_const_constructors, prefer_adjacent_string_concatenation

import 'package:MAAPPE/login/otp.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class phone extends StatefulWidget {
  static String verify = "";

  const phone({super.key});
  @override
  State<phone> createState() => _phoneState();
}

// ignore: camel_case_types
class _phoneState extends State<phone> {
  // ignore: unnecessary_new
  final TextEditingController _phonenumber = new TextEditingController();
  // ignore: unused_field
  static String verify = "";

  @override
  void dispose() {
    _phonenumber.dispose();
    super.dispose();
  }

  Future<void> sendOtp(BuildContext context) async {
    // ignore: avoid_print
    print("TEXT IS " + '+91' + _phonenumber.text);
    try {
      // Send an SMS for verification
      await FirebaseAuth.instance.verifyPhoneNumber(
        timeout: Duration(seconds: 45),
        // ignore: prefer_interpolation_to_compose_strings
        phoneNumber: '+91' + _phonenumber.text,
        verificationCompleted: (PhoneAuthCredential credential) {
          // This callback is called when auto-verification is successful.
          // You can sign in the user with the credential if needed.
        },
        verificationFailed: (FirebaseAuthException e) {
          // ignore: avoid_print
          print("Verification failed: ${e.toString()}");
          // Handle verification failure, e.g., show an error to the user.
        },
        codeSent: (String verificationId, int? resendToken) {
          // Store the verification ID for later use.
          phone.verify = verificationId;
          // ignore: avoid_print
          print("Successfully working");
          // Navigate to the OTP verification screen (Myotp).
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Myotp(verificationId)),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // This callback is called when the code auto-retrieval times out.
          // You can handle it if needed.
        },
      );
    } catch (e) {
      // ignore: avoid_print
      print("Error during phone verification: ${e.toString()}");
      if (e is FirebaseAuthException) {
        if (e.code == 'too-many-requests') {
          // Handle the "too-many-requests" error by waiting and retrying
          await Future.delayed(Duration(seconds: 15)); // Wait for 15 minutes
          // ignore: use_build_context_synchronously
          sendOtp(context); // Retry sending OTP
        } else if (e.code == 'quota-exceeded') {
          // Handle the "quota-exceeded" error appropriately, e.g., show an error to the user
          // ignore: avoid_print
          print("SMS verification quota exceeded. Please try again later.");
        } else {
          // Handle other errors that might occur during phone verification.
        }
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/login.png', width: 250, height: 250),
              SizedBox(
                height: 25,
              ),
              Text('Phone Verification',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text(
                'We need to register the phone before getting started!',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(height: 15),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        // ignore: unnecessary_new
                        controller: new TextEditingController(text: "+91"),
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Text(
                      '|',
                      style: TextStyle(fontSize: 33),
                    ),
                    SizedBox(height: 50),
                    Expanded(
                      child: TextField(
                        controller: _phonenumber,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Phone Number'),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => sendOtp(context),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 19, 30, 176),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text('Send the OTP'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
