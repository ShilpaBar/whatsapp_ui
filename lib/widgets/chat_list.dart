import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          return Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: darkGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 30, top: 5, bottom: 20),
                  child: Text(
                    messages[index]["text"].toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Row(
                    children: [
                      Text(
                        messages[index]["time"].toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      Gap(5),
                      Icon(
                        Icons.done_all,
                        color: Colors.blue,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          );
        }
        return Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: textColor1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 30, top: 5, bottom: 20),
                child: Text(
                  messages[index]["text"].toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Text(
                  messages[index]["time"].toString(),
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ]),
          ),
        );
      },
      itemCount: messages.length,
    );
  }
}
