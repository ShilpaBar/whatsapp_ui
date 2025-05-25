import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/screens/message_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: info.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MessageScreen();
              }));
            },
            title: Text(
              info[index]["name"].toString(),
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all, size: 16, color: Colors.blue),
                SizedBox(width: 4),
                Expanded(
                  child: Text(
                    info[index]["message"].toString(),
                    style: textTheme.bodyMedium?.copyWith(
                        // color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                info[index]["profilePic"] ?? "",
              ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  info[index]["time"].toString(),
                  style: textTheme.bodySmall?.copyWith(
                    color: isDarkMode ? textColor2 : textColor1,
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: whatsappGreen,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '1',
                    style: textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
