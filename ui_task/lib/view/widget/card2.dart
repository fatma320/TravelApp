import 'package:flutter/material.dart';
import 'package:ui_task/model/list.dart';

import '../screens/screen3.dart';

class Card2 extends StatelessWidget {
  int index=0;
  Card2({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return ThirdScreen(imgPath: trending[index]['image']);
        }));
      },
      child: Container(margin:const EdgeInsets.only(left: 20),
        width:200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:const Color(0xffE8E7E7)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  trending[index]['image'],
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                )),
            SizedBox(width:120,
              child: ListTile(
                title:Text(trending[index]['title'],style:const TextStyle(fontSize:15,fontWeight:FontWeight.w500),),
                subtitle:Text(trending[index]['subtitle'],style:const TextStyle(fontSize:15)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
