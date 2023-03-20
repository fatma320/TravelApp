import 'package:flutter/material.dart';
import 'package:ui_task/view/screens/screen2.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);
  var b = Colors.black;
  var g = Colors.grey;

  void selectScreen(BuildContext ctx){
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_){
      return SecondScreen();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(90, 70, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset('images/first.jpeg'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset('images/second.jpeg'),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 70, 0, 30),
                child: Text('Travel with ease.',
                    style: TextStyle(
                        color: b, fontWeight: FontWeight.bold, fontSize: 30)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 0 , horizontal: 20),
                margin: const EdgeInsets.fromLTRB(30, 0, 20, 50),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Donec vel blandit purus, vel tempor nisl. Maecenas laoreet lacus id mollis tempor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: g, fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 60,
                width: 160,
                child: ElevatedButton(
                  onPressed: () {
                    return selectScreen(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
