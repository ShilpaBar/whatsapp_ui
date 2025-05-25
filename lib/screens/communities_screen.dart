import 'package:badges/badges.dart' as b;
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          "Communities",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: b.Badge(
                onTap: () {},
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDarkMode ? textColor2 : Colors.blueGrey[100],
                  ),
                  child: Icon(
                    Icons.group,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                badgeStyle: b.BadgeStyle(
                  badgeColor: isDarkMode ? Colors.black : Colors.white,
                  padding: EdgeInsets.zero,
                  borderRadius: BorderRadius.circular(50),
                ),
                showBadge: true,
                position: b.BadgePosition.bottomEnd(bottom: 0, end: 0),
                badgeContent: Icon(
                  Icons.add_circle_outlined,
                  size: 22,
                  color: whatsappGreen,
                ),
              ),
              title: Text(
                "New community",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[200],
            )
          ],
        ),
      ),
    );
  }
}
