import 'package:flutter/material.dart';
import 'package:ui_task/view/screens/screen2.dart';

import '../../model/list.dart';
import '../widget/gallary.dart';

class ThirdScreen extends StatelessWidget {
  String imgPath;
  ThirdScreen({Key? key,required this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(imgPath , fit: BoxFit.cover, width: 400.0,
                  height: 230.0,)),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xffE8E7E7),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pop(MaterialPageRoute(builder: (context) {
                          return SecondScreen();
                        }));
                      },
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: const Color(0xffE8E7E7),
                    child: IconButton(
                      icon: const Icon(
                        Icons.star_border_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  )),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
          child: Text("About",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ),
        const Text(
            "Lorem ipsum dolor sit amet, consectetur adipisci elit,\nsed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum ullam ",
            style: TextStyle(color: Colors.black54)),
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 10, left: 8),
          child: Text("Gallery",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
              itemBuilder: (context, index) => Gallery(index: index),
              itemCount: trending.length,
              scrollDirection: Axis.horizontal),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink[300]),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 40.0,
                  ),
                  child: Text("Book now"))),
        ),
      ]),
    ));
  }
}
