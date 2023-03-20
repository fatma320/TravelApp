import 'package:flutter/material.dart';
import 'package:ui_task/model/list.dart';

import '../screens/screen3.dart';

class Card1 extends StatelessWidget {
  Card1({Key? key, required this.index}) : super(key: key);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return ThirdScreen(imgPath: recommended[index]['image']);
        }));
      },
      child: Card(
          margin: const EdgeInsets.only(left: 20),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(recommended[index]['image']),
                  width: 175,
                  height: 220,
                ),
              ),
              Container(
                width: 100,
                padding: const EdgeInsets.only(top: 150),
                child: ListTile(
                  textColor: Colors.white,
                  title: Text(
                    recommended[index]['title'],
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(recommended[index]['subtitle']),
                ),
              )
            ],
          )),
    );
  }
}
