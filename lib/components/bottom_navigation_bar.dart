import 'package:flutter/material.dart';
import 'package:twitter_ui/custom_icons_icons.dart';
import 'package:twitter_ui/pages/pages.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        pageNavigationRoute(
            icon: CustomIcons.home, context: context, page: 'HOME'),
        pageNavigationRoute(
            icon: CustomIcons.search, context: context, page: 'SEARCH'),
        pageNavigationRoute(
            icon: CustomIcons.mic, context: context, page: 'MIC'),
        pageNavigationRoute(
            icon: CustomIcons.notifs, context: context, page: 'NOTIFICATIONS'),
        pageNavigationRoute(
            icon: CustomIcons.messages, context: context, page: 'MESSAGES'),
      ],
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}

pageNavigationRoute(
    {required IconData icon,
    Color color = Colors.black,
    String label = 'placeholder',
    required String page,
    context}) {
  return BottomNavigationBarItem(
      icon: IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            if(page == 'SEARCH'){ return const SearchPage(bottomNavigationBar: MyBottomNavigationBar(),);}
            if(page == 'HOME'){ return const SearchPage(bottomNavigationBar: MyBottomNavigationBar(),);}
            if(page == 'MIC'){ return const SpacesPage(bottomNavigationBar: MyBottomNavigationBar(),);}
            if(page == 'NOTIFICATIONS'){ return const NotificationsPage(bottomNavigationBar: MyBottomNavigationBar(),);}
            if(page == 'MESSAGES'){ return const MessagesPage(bottomNavigationBar: MyBottomNavigationBar(),);}                        
            return const SearchPage(bottomNavigationBar: MyBottomNavigationBar(),);
          }));
        },
        icon: Icon(icon),
        color: color,
      ),
      label: label);
}
