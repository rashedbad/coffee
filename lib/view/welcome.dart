import 'dart:async';

import 'package:coffee/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/image/pattern.png"),
              fit: BoxFit.fill,
            ),
            color: Colors.brown.shade200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/image/Espresso.svg"),
            const Divider(
              color: Colors.black,
              height: 5,
              indent: 121,
              endIndent: 121,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('COFFEE ',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Text('HUB',
                    style: TextStyle(fontSize: 20, color: Color(0xffB98068)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
