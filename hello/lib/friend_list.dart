import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/chat_message.dart';

class FriendList extends StatefulWidget {
  const FriendList({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _FriendListState();
}

// class Friends {
//   final String imageUrl; //头像
//   final String name; //名字
//   final String indexLetter; //首字母大写
//   Friends(
//       {required this.imageUrl, required this.name, required this.indexLetter});
// }

class _FriendListState extends State<FriendList> {
  List<String> friends = ['小明', '小红', '小李'];
  List<String> signature = ['我的个性签名', '你也是我的个性签名', '你还是我的个性签名'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            child: Text(friends[index][0]),
          ),
          title: Text(friends[index]),
          trailing: Icon(Icons.message),
          subtitle: Text(signature[index]),
          onTap: () {
            Navigator.push(context, 
            new MaterialPageRoute(builder: (context)=>new MessageChat()));
          },
        );

      },
    );
  }
}
