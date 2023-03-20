import 'package:flutter/cupertino.dart';

import '../../model/list.dart';

class Gallery extends StatelessWidget {
  int index = 0;

  Gallery({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffE8E7E7)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            trending[index]['image'],
            fit: BoxFit.cover,
          )),
    );
  }
}
