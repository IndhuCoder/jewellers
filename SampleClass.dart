import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:side_navigation/side_navigation.dart';

import 'CreateStore.dart';
import 'Dashboard.dart';
import 'ManageMetals.dart';


class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> views = const [
    Center(
        child: const layout()
    ),
    Center(
      child: const CreateStores()
    ),
    Drawer(
      // child: ManageMetals()

    ),
  ];
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Account',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            toggler: SideBarToggler(
                expandIcon: Icons.keyboard_arrow_left,
                shrinkIcon: Icons.keyboard_arrow_right,
                onToggle: () {
                  print('Toggle');
                }),
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
class Subitems extends StatefulWidget {
  const Subitems({Key? key}) : super(key: key);

  @override
  State<Subitems> createState() => _SubitemsState();
}

class _SubitemsState extends State<Subitems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.person_add_alt,
              color: Colors.white70,
            ),
            title: Text(
              "SubItems",
              style: GoogleFonts.bitter(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),

        ],
      ),
    );
  }
}



