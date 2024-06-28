import 'dart:async';
import 'package:flutter/material.dart';

import 'login/phone.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  startTime() async {
    var duration = const Duration(seconds: 6);
    // ignore: unnecessary_new
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const phone()),
        (route) => false);
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(
              height: 30,
            ),
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 26, 2, 240),
              backgroundColor: Color.fromARGB(255, 223, 6, 6),
              strokeWidth: 5,
            )
          ],
        ),
      ),
    );
  }
}

// class splash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration(seconds: 3), () {
//       Navigator.pushAndRemoveUntil(
//           context, loginScreen.routeName as Route<Widget>, (route) => true);
//     });

//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         child: Image.asset('assests/images/logo.png'),
//         color: Color.fromARGB(255, 255, 249, 249),
//       ),
//     );
//   }
// }




    //floatingActionButton: FloatingActionButton(
        //  onPressed: () => Navigator.of(context)
          ///    .push(MaterialPageRoute(builder: (context) => login()
             // )
             // )
              //),