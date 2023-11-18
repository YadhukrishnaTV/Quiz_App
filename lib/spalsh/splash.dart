import 'package:flutter/material.dart';
import 'package:quiz/home/home.dart';




class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}


class _splashState extends State<splash> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.push(context,
        MaterialPageRoute(builder: (context) => Home55()))); //user screen
  }
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(height: double.infinity,
       width: double.infinity,
       child: Image.asset("asset/image/Android Large - 10.png",fit: BoxFit.fill,),)
    );
  }
}