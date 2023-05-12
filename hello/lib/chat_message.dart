import 'package:flutter/material.dart';

import 'friend_list.dart';

class MessageChat extends StatefulWidget {
  const MessageChat({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MessageChatState();
}

class _MessageChatState extends State<MessageChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("消息界面"),
      ),
      // backgroundColor: Colors.amber,
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
              ),
            ),
            GestureDetector(
              child: ConstrainedBox(
                  constraints: const BoxConstraints(minHeight: 60),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('  发送',
                        style: TextStyle(color: Colors.amber, fontSize: 16)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
