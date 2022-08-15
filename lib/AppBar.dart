import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'custom_icons_icons.dart';

class MyAppbar extends StatelessWidget with PreferredSizeWidget {
  const MyAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(      
      systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      backgroundColor: Colors.white,
      title: const Icon(
        MdiIcons.twitter,
        color: Colors.blue,
        size: 35,
      ),
      leading: const Icon(
        Icons.menu,
        color: Colors.blue,
      ),
      actions: [
        Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(
              CustomIcons.sparkles,
              color: Colors.blue,
              size: 25,
            ))
      ],
      centerTitle: true,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
