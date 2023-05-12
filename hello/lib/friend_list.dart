import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendList extends StatefulWidget{
 const FriendList({Key?key}):super(key: key);
  @override
  State<StatefulWidget> createState() =>_FriendListState();

}

// class Friends{
//   final String imageUrl;//头像
//   final String name;//名字
//   final String indexLetter;//首字母大写
//   Friends({this.imageUrl,this.name,this.indexLetter});
// }
List<String> friend=[
  ""

];
class _FriendListState extends State<FriendList>{
  @override
  Widget build(BuildContext context) {
    return ListView(
            children: const [
              ListTile(
                // leading: CircleAvatar(
                //   backgroundImage: NetworkImage(),
                // ),
                leading: Icon(Icons.home),
              title: Text('好友1'),
              subtitle: Text('这是我的个性签名'),
              dense: true,
              trailing: Icon(Icons.message),
              // selected: true,
        ),
                ListTile(
                // leading: CircleAvatar(
                //   backgroundImage: NetworkImage(),
                // ),
                leading: Icon(Icons.home),
              title: Text('好友2'),
              subtitle: Text('这是我的个性签名'),
              dense: true,
              trailing: Icon(Icons.message),
              // selected: true,
        ),
            ],
          );
  }

}