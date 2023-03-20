import 'package:flutter/material.dart';
import 'package:ui_task/view/widget/card2.dart';

import '../../model/list.dart';
import '../widget/card.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);
  var w = Colors.white;
  var b = Colors.black;
  var g = Colors.grey;
  var f = Colors.grey[200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.dehaze,
                color: b,
                size: 30,
              ),
            ),
            trailing: const CircleAvatar(
              backgroundImage: AssetImage('images/avatar.jpeg'),
              radius: 30,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Text(
                    'Where do you \nwant to go?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: b, fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: f,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: g,
                          size: 30,
                        ),
                        hintText: 'search...',
                        hintStyle: TextStyle(color: g, fontSize: 22),
                        border: InputBorder.none,
                      ),
                    )),
                const ListTile(
                  title: Text("Recommended",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.more_horiz),
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        Card1(index: index),
                    itemCount: recommended.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
                    child: ListTile(
                      title: Text("Trending this month",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.more_horiz),
                    ),
                ),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    itemBuilder: (context, index) => Card2(index: index),
                    itemCount: trending.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}