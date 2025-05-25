import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/screens/calls_screen.dart';
import 'package:whatsapp_ui/screens/chats_screen.dart';
import 'package:whatsapp_ui/screens/communities_screen.dart';
import 'package:whatsapp_ui/screens/updates_screen.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController?.addListener(onTabChange);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  onTabChange() {
    setState(() {});
  }

  Widget? getFABButton() {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    switch (_tabController?.index) {
      case 0:
        return FloatingActionButton(
          tooltip: "New Chat",
          onPressed: () {},
          child: Icon(
            Icons.add_comment,
          ),
        );
      case 1:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton.small(
              tooltip: "New text status",
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: isDarkMode ? Colors.white : Colors.black,
                size: 27,
              ),
              // elevation: 0,
              backgroundColor: !isDarkMode
                  ? Colors.grey[200]
                  : const Color.fromARGB(255, 31, 39, 38),
            ),
            Gap(10),
            FloatingActionButton(
              tooltip: "New status updates",
              onPressed: () {},
              child: Icon(
                Icons.add_a_photo,
              ),
            ),
          ],
        );

      case 3:
        return FloatingActionButton(
          tooltip: "New Call",
          onPressed: () {},
          child: Icon(
            Icons.add_call,
          ),
        );
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          ChatsScreen(),
          UpdatesScreen(),
          CommunitiesScreen(),
          CallsScreen()
        ],
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: getFABButton(),
      bottomNavigationBar: NavigationBar(
        // backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
        onDestinationSelected: (int index) {
          setState(() {
            _tabController!.index = index;
          });
        },
        // indicatorColor: theme.navigationBarTheme.indicatorColor,
        selectedIndex: _tabController!.index,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Badge(
              backgroundColor: whatsappGreen,
              label: Text("2"),
              child: Icon(
                Icons.chat,
                size: 27,
                color: isDarkMode ? indicatorColor1 : darkGreen,
              ),
            ),
            icon: Badge(
              backgroundColor: whatsappGreen,
              label: Text("2"),
              child: Icon(
                Icons.chat_outlined,
                size: 27,
              ),
            ),
            label: 'Chats',
          ),
          NavigationDestination(
            selectedIcon: Badge(
              backgroundColor: whatsappGreen,
              label: Text("2"),
              child: Icon(
                Icons.bakery_dining,
                size: 27,
                color: isDarkMode ? indicatorColor1 : darkGreen,
              ),
            ),
            icon: Badge(
              backgroundColor: whatsappGreen,
              label: Text("2"),
              child: Icon(
                Icons.bakery_dining_outlined,
                size: 27,
              ),
            ),
            label: 'Updates',
          ),
          NavigationDestination(
            icon: Badge(
              backgroundColor: whatsappGreen,
              label: Text("2"),
              child: Icon(
                Icons.people_outlined,
                size: 27,
              ),
            ),
            selectedIcon: Badge(
              backgroundColor: whatsappGreen,
              label: Text("2"),
              child: Icon(
                Icons.people,
                size: 27,
                color: isDarkMode ? indicatorColor1 : darkGreen,
              ),
            ),
            label: 'Communities',
          ),
          NavigationDestination(
            icon: Badge(
              backgroundColor: whatsappGreen,
              label: Text('2'),
              child: Icon(
                Icons.call_outlined,
                size: 27,
              ),
            ),
            selectedIcon: Badge(
              backgroundColor: whatsappGreen,
              label: Text('2'),
              child: Icon(
                Icons.call,
                size: 27,
                color: isDarkMode ? indicatorColor1 : darkGreen,
              ),
            ),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
