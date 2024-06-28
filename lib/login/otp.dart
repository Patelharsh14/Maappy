// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:MAAPPE/login/phone.dart';
import 'package:pinput/pinput.dart';
import '../screens/dashboard.dart';

// ignore: must_be_immutable
class Myotp extends StatefulWidget {
  Myotp(this.verificationId, {super.key, Key? keys});
  // ignore: prefer_typing_uninitialized_variables
  var verificationId;
  @override
  State<Myotp> createState() => _MyotpState();
}

class _MyotpState extends State<Myotp> {
  var code = "";
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(94, 169, 236, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(5, 6, 6, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    // ignore: unused_local_variable
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1)),
      borderRadius: BorderRadius.circular(50),
    );

    // ignore: unused_local_variable
    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(59, 119, 215, 1),
      ),
    );

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/login.png',
                  width: 250, height: 250), // Fix the asset path
              const SizedBox(
                height: 25,
              ),
              const Text('Phone Verification',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text(
                'We need to register the phone before getting started!',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Pinput(
                onChanged: (value) {
                  code = value;
                },
                length: 6,
                validator: (s) {
                  return s == '000000' ? null : ' ';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                // ignore: avoid_print
                onCompleted: (pin) => print(pin),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                            verificationId: widget.verificationId,
                            smsCode: code);

                    // Sign the user in (or link) with the credential
                    await auth.signInWithCredential(credential);
                    // ignore: use_build_context_synchronously
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Dashboard()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 19, 30, 176),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('Verify Phone Number'),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () async {
                      Navigator.pop(context);
                      // Create a PhoneAuthCredential with the code
                      // PhoneAuthCredential credential =
                      //     PhoneAuthProvider.credential(
                      //         verificationId: phone.verify, smsCode: smsCode);

                      // // Sign the user in (or link) with the credential
                      // await auth.signInWithCredential(credential);
                    },
                    child: const Text('Edit Your Phone Number ?',
                        style: TextStyle(color: Colors.black)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
