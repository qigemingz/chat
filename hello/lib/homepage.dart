import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'friend_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        backgroundColor: Colors.blueAccent.shade100, //导航栏下的背景颜色
        //animationDuration: Duration(microseconds: 100),//改变速度
        color: Color.fromARGB(255, 211, 208, 208),
        items: [
          Column(
            children: [
              Icon(
                Icons.face_retouching_natural,
                size: 30,
                // color: Color.fromARGB(255, 179, 167, 131)
              ),
              Text('好友'),
            ],
          ),
          Icon(Icons.groups, size: 30),
          Icon(Icons.festival, size: 30),
          Icon(
            Icons.insert_comment,
            size: 30,
          ),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          controller.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.bounceInOut);
        },
      ),
      body: Container(
        color: Colors.blueAccent.shade100,
        child: PageView(
          onPageChanged: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          controller: controller,
          children: [
            Container(
                color: Color.fromARGB(255, 252, 251, 247), 
                child: FriendList(),
          ),
            Container(
                // color: Colors.red,
                ),
            Container(
                //  color: Colors.green,
                ),
            Container(
                //  color: Colors.purple,
                ),
            Container(
                //  color: Colors.pinkAccent,
                ),
          ],
        ),
      ),
    );
  }
}
