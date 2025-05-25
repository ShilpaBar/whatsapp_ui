import 'package:badges/badges.dart' as b;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:status_view/status_view.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          "Updates",
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            // padding: const EdgeInsets.symmetric(horizontal: 10),
            children: [
              Text(
                "Status",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    color: isDarkMode ? Colors.white : Colors.black),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: b.Badge(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor:
                        isDarkMode ? textColor2 : Colors.blueGrey[100],
                    child: Icon(
                      Icons.person,
                      size: 45,
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
                  "My status",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                subtitle: Text(
                  "Tap to add status update",
                  style: TextStyle(
                    fontSize: 15,
                    color: isDarkMode ? textColor2 : textColor1,
                  ),
                ),
              ),
              Text(
                "Recent updates",
                style: TextStyle(
                    color: isDarkMode ? textColor2 : textColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              ListView.separated(
                  separatorBuilder: (context, index) => Gap(6),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 3),
                      onTap: () {},
                      horizontalTitleGap: 10,
                      leading: StatusView(
                        radius: 27,
                        spacing: 12,
                        strokeWidth: 2.5,
                        indexOfSeenStatus: 1,
                        numberOfStatus: 2,
                        padding: 3,
                        seenColor: Colors.grey,
                        unSeenColor: whatsappGreen,
                        centerImageUrl: info[index]["profilePic"] ?? "",
                      ),
                      title: Text(
                        info[index]["name"] ?? "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        info[index]["time"] ?? "",
                        style: TextStyle(
                          fontSize: 15,
                          color: isDarkMode ? textColor2 : textColor1,
                        ),
                      ),
                    );
                  }),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Viewed updates",
                  style: TextStyle(
                      color: isDarkMode ? textColor2 : textColor1,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: isDarkMode ? textColor2 : textColor1,
                ),
              ),
              ListView.separated(
                  separatorBuilder: (context, index) => Gap(6),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 3),
                      onTap: () {},
                      horizontalTitleGap: 10,
                      leading: StatusView(
                        radius: 27,
                        spacing: 12,
                        strokeWidth: 2.5,
                        indexOfSeenStatus: 1,
                        numberOfStatus: 2,
                        padding: 3,
                        seenColor: Colors.grey,
                        unSeenColor: whatsappGreen,
                        centerImageUrl: info[index]["profilePic"] ?? "",
                      ),
                      title: Text(
                        info[index]["name"] ?? "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        info[index]["time"] ?? "",
                        style: TextStyle(
                          fontSize: 15,
                          color: isDarkMode ? textColor2 : textColor1,
                        ),
                      ),
                    );
                  }),
            ]),
      ),
    );
  }
}
