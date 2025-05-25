import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: Text(
            "WhatsApp",
            style: TextStyle(
                color: whatsappGreen,
                fontWeight: FontWeight.bold,
                fontSize: 27),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(
                  Icons.search,
                  size: 26,
                ),
              ),
            ),
            Gap(20),
            DefaultTabController(
              length: 5,
              initialIndex: 0,
              child: ButtonsTabBar(
                  contentPadding: EdgeInsets.symmetric(horizontal: 13),
                  labelStyle: TextStyle(
                      color: isDarkMode ? whatsappGreen : darkGreen,
                      fontWeight: FontWeight.bold),
                  unselectedLabelStyle: TextStyle(
                      color: isDarkMode ? textColor2 : textColor1,
                      fontWeight: FontWeight.bold),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: isDarkMode
                        ? whatsappGreen.withValues(alpha: .22)
                        : indicatorColor1,
                  ),
                  unselectedDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.withValues(alpha: .12),
                  ),
                  height: 40,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Unread",
                    ),
                    Tab(
                      text: "Favorites",
                    ),
                    Tab(
                      text: "Groups",
                    ),
                    Tab(
                      icon: Icon(Icons.add),
                    ),
                  ]),
            ),
            Gap(10),
            ContactList()
          ],
        ));
  }
}
