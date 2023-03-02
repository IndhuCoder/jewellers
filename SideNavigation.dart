import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metals_details/CreateStore.dart';
import 'package:metals_details/SellOrders.dart';
import 'package:metals_details/TransactionDetails.dart';
import 'Customers.dart';
import 'Dashboard.dart';
import 'ManageMetals.dart';
import 'MetalRates.dart';
import 'Notifications.dart';

/*
* Date: 23/02/2023
*
* Title: Side Navigation Bar
*
* Author: Indu Hira
*
 */

class CustomDrawer extends StatefulWidget {
  CustomDrawer();

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  late ExpandedTileController _controller;

  void initState() {
    _controller = ExpandedTileController(isExpanded: true);
    super.initState();
  }

  bool _isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        curve: Curves.ease,
        duration: const Duration(milliseconds: 600),
        width: _isCollapsed ? 250 : 100,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(bottom: 0, top: 0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          // color: Color(0xff212d33),
          color: const Color(0xff031c30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    // preferBelow: true,
                    verticalOffset: 10,
                    message: "Dashboard",
                    child: IconButton(
                      icon: Icon(
                        Icons.palette_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ] else ...[
                  ListTile(
                    leading: const Icon(
                      Icons.palette_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Dashboard",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const layout())));
                    },
                  ),
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    // preferBelow: true,
                    verticalOffset: 10,
                    message: "Admin",
                    child: IconButton(
                      icon: const Icon(Icons.person,
                          color: Colors.white, size: 25),
                      onPressed: () {
                        setState(() {
                          _isCollapsed = !_isCollapsed;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ] else ...[
                  ExpansionTile(
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    iconColor: Colors.white,
                    leading: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Admin",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
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
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    // preferBelow: true,
                    verticalOffset: 10,
                    message: "Stores",
                    child: IconButton(
                      icon: const Icon(Icons.storefront_rounded,
                          color: Colors.white, size: 25),
                      onPressed: () {
                        setState(() {
                          _isCollapsed = !_isCollapsed;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ] else ...[
                  ExpansionTile(
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    iconColor: Colors.white,
                    leading: const Icon(Icons.storefront_rounded,
                        color: Colors.white),
                    title: Text(
                      "Stores",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.person_add_alt,
                          color: Colors.white70,
                        ),
                        title: Text(
                          "Create Store",
                          style: GoogleFonts.bitter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const CreateStores())));
                        },
                      ),
                    ],
                  ),
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    // preferBelow: true,
                    verticalOffset: 10,
                    message: "Metal Details",
                    child: IconButton(
                      icon: const Icon(Icons.person,
                          color: Colors.white, size: 25),
                      onPressed: () {
                        setState(() {
                          _isCollapsed = !_isCollapsed;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ] else ...[
                  ExpansionTile(
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    iconColor: Colors.white,
                    leading: const Icon(Icons.person, color: Colors.white),
                    title: Text(
                      "Metal Details",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    children: [
                      ListTile(
                        iconColor: Colors.white,
                        leading: const Icon(Icons.add_circle_outlined,
                            color: Colors.white70),
                        title: Text(
                          "Manage Metals",
                          style: GoogleFonts.bitter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const ManageMetals())));
                        },
                      ),
                      ListTile(
                        iconColor: Colors.white,
                        leading: const Icon(Icons.attach_money_rounded,
                            color: Colors.white70),
                        title: Text(
                          "Metal Rate History",
                          style: GoogleFonts.bitter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const MaterialRates())));
                        },
                      ),
                    ],
                  ),
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    verticalOffset: 10,
                    message: "Notification",
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ] else ...[
                  ListTile(
                    leading: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Notification",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Notifications())));
                    },
                  ),
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    // preferBelow: true,
                    verticalOffset: 10,
                    message: "Contents",
                    child: IconButton(
                      icon: Icon(
                        Icons.camera_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ] else ...[
                  ListTile(
                    leading: const Icon(
                      Icons.camera_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Contents",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {},
                  ),
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    // preferBelow: true,
                    verticalOffset: 10,
                    message: "Sell Order",
                    child: IconButton(
                      icon: Icon(
                        Icons.pentagon_sharp,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ] else ...[
                  ListTile(
                    leading: const Icon(
                      Icons.pentagon_sharp,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Sell Order",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SellOrders())));
                    },
                  ),
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    // preferBelow: true,
                    verticalOffset: 10,
                    message: "Customers",
                    child: IconButton(
                      icon: Icon(
                        Icons.people_alt,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ] else ...[
                  ListTile(
                    leading: const Icon(
                      Icons.people_alt,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Customers",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => CustomersDetail())));
                    },
                  ),
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    verticalOffset: 10,
                    message: "Inactive Customers",
                    child: IconButton(
                      icon: Icon(
                        Icons.person_add_disabled_sharp,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ] else ...[
                  ListTile(
                    leading: const Icon(
                      Icons.person_add_disabled_sharp,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Inactive Customers",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {},
                  ),
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    // preferBelow: true,
                    verticalOffset: 10,
                    message: "Transaction Details",
                    child: IconButton(
                      icon: Icon(
                        Icons.newspaper,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ] else ...[
                  ListTile(
                    leading: const Icon(
                      Icons.newspaper,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Transaction Details",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const TransactionDetails())));
                    },
                  ),
                ],
                if (!_isCollapsed) ...[
                  Tooltip(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    // preferBelow: true,
                    verticalOffset: 10,
                    message: "Settings",
                    child: IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ] else ...[
                  ListTile(
                    leading: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Settings",
                      style: GoogleFonts.bitter(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {},
                  ),
                ],
                const Divider(
                  color: Colors.white30,
                ),
                Align(
                  alignment: _isCollapsed
                      ? Alignment.bottomCenter
                      : Alignment.bottomCenter,
                  child: IconButton(
                    splashColor: Colors.transparent,
                    icon: Icon(
                      _isCollapsed
                          ? Icons.arrow_back_ios
                          : Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onPressed: () {
                      setState(() {
                        _isCollapsed = !_isCollapsed;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
