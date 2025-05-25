import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          padding: EdgeInsets.zero,
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 19,
              backgroundImage: NetworkImage(
                info[0]["profilePic"] ?? "",
              ),
            ),
            Text(
              info[0]["name"].toString(),
              style: TextStyle(fontSize: 18),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.video_),
            ),
          ],
        ),
      ),
    );
  }
}
