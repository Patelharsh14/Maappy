// ignore_for_file: unused_import
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:MAAPPE/Queries/querymodel.dart';
import 'package:MAAPPE/login/otp.dart';
//import 'package:nyay_1/Queries/querymodel.dart';
import 'package:MAAPPE/screens/dashboard.dart';
import 'package:MAAPPE/splash.dart';
import 'package:provider/provider.dart'; // Import the provider package


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key'),
    androidProvider: kReleaseMode ? AndroidProvider.playIntegrity : AndroidProvider.debug,
    appleProvider: AppleProvider.appAttest,
  );

  runApp(
    
    ChangeNotifierProvider(
      create: (context) => QueryModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        // ignore: avoid_print
        print('User is currently signed out!');
      } else {
        // ignore: avoid_print
        print('User is signed in!');
      }
    });

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Splash(),
    );
  }
}
