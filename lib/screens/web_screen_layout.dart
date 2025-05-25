import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:whatsapp_ui/screens/mobile_screen_layout.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarX(
        controller: SidebarXController(selectedIndex: 0, extended: true),
        items: [
          SidebarXItem(
            icon: Icons.chat,
            label: 'Chats',
          )
        ],
      ),
      body: Row(
        children: [
          Container(
            width: 400,
            constraints: BoxConstraints(maxWidth: 400),
            child: MobileScreenLayout(),
          ),
          AnimatedContainer(
            // width: double.infinity,
            width: MediaQuery.sizeOf(context).width - 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/whatsapp_chat_image.png"),
                fit: BoxFit.cover,
              ),
            ),
            duration: Durations.medium1,
            child: Column(
              children: [
                Expanded(child: ChatList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
