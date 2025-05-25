import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          "Calls",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favorites",
              style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 3),
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: whatsappGreen,
                child: Icon(
                  Icons.favorite,
                  size: 20,
                  color: isDarkMode ? Colors.black : Colors.white,
                ),
              ),
              title: Text(
                "Add favorite",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Text(
              "Recent",
              style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            ListView.separated(
                separatorBuilder: (context, index) => Gap(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 3),
                    onTap: () {},
                    horizontalTitleGap: 17,
                    leading: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                        info[index]["profilePic"] ?? "",
                      ),
                    ),
                    title: Text(
                      info[index]["name"] ?? "",
                      style: TextStyle(
                        fontSize: 17,
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.call_made,
                          color: whatsappGreen,
                          size: 16,
                        ),
                        Text(
                          info[index]["time"] ?? "",
                          style: TextStyle(
                            fontSize: 15,
                            color: isDarkMode ? textColor2 : textColor1,
                          ),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call_outlined,
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
