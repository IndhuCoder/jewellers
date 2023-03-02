import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metals_details/SideNavigation.dart';
import 'package:flutter_test/flutter_test.dart';



class layout extends StatefulWidget {
  const layout({super.key});

  @override
  State<layout> createState() => _layoutState();
}

class _layoutState extends State<layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdcdbdc),
        body: Row(children: [
          CustomDrawer(), //
          Expanded(
              child: Center(
                  child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(right: 50, left: 50),
              child: Material(
                elevation: 20,
                color: Color.fromARGB(255, 247, 246, 246),
                // width: 550,
                // width: MediaQuery.of(context).size.width,
                child: Center(
                  child: SingleChildScrollView(
                    child: Container(
                      width: 900,
                      height: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 70,
                                width: 270,
                                color: Color.fromARGB(255, 247, 203, 81),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'GOLD',
                                      style: GoogleFonts.bitter(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                        color: Color.fromARGB(255, 46, 4, 153),
                                        height: 60,
                                        width: 60,
                                        child: Icon(
                                          Icons.keyboard_double_arrow_down,
                                          color: Colors.white,
                                          size: 30,
                                        ))
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 270,
                                color: Color.fromARGB(255, 220, 220, 219),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'SILVER',
                                      style: GoogleFonts.bitter(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Container(
                                        color: Color.fromARGB(255, 46, 4, 153),
                                        height: 60,
                                        width: 60,
                                        child: Icon(
                                          Icons.keyboard_double_arrow_down,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 270,
                                color: Color.fromARGB(255, 177, 195, 199),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'PLATINUM',
                                      style: GoogleFonts.bitter(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                        color: Color.fromARGB(255, 46, 4, 153),
                                        height: 60,
                                        width: 60,
                                        child: Icon(
                                          Icons.keyboard_double_arrow_down,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.black12,
                          ),
                          Text(
                            'Quantity holding by customers:',
                            style: GoogleFonts.bitter(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Divider(
                            color: Colors.black12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,
                                width: 270,
                                color: Color.fromARGB(255, 247, 203, 81),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          number("0 "),
                                          text(
                                            'customers having ',
                                          ),
                                          number("0.0000 "),
                                        ],
                                      ),
                                      text(
                                        'Gms Gold holdings',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 270,
                                color: Color.fromARGB(255, 220, 220, 219),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          number("0 "),
                                          text(
                                            'customers having ',
                                          ),
                                          number("0.0000 "),
                                        ],
                                      ),
                                      text(
                                        'Gms Silver holdings',
                                      ),
                                    ],
                                  ),
                                ),

                                //  Padding(
                                //   padding: const EdgeInsets.all(8.0),
                                //   child: text(
                                //     '0 customers having 0.0000 Gms Silver holdings',
                                //   ),
                                // ),
                              ),
                              Container(
                                height: 60,
                                width: 270,
                                color: Color.fromARGB(255, 177, 195, 199),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          number("0 "),
                                          text(
                                            'customers having ',
                                          ),
                                          number("0.0000 "),
                                        ],
                                      ),
                                      text(
                                        'Gms Platinum holdings',
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.black12,
                          ),
                          Text('Customers without holdings:',
                              style: GoogleFonts.bitter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,
                                width: 270,
                                color: Color.fromARGB(255, 247, 203, 81),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          number("0 "),
                                          text(
                                            'Customers do not have Gold',
                                          ),
                                        ],
                                      ),
                                      text(
                                        'holdings',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 270,
                                color: Color.fromARGB(255, 220, 220, 219),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          number("0 "),
                                          text(
                                            'Customers do not have Silver',
                                          ),
                                        ],
                                      ),
                                      text(
                                        'holdings',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 270,
                                color: Color.fromARGB(255, 177, 195, 199),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          number("0 "),
                                          text(
                                            'Customers do not have Platinum',
                                          ),
                                        ],
                                      ),
                                      text(
                                        'holdings',
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.black12,
                          ),
                          Text("Jeweller's Current Balance (Gms):",
                              style: GoogleFonts.bitter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Divider(
                            color: Colors.black12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )))
        ]));
  }
}

Widget text(font) {
  return Text(
    font,
    style: GoogleFonts.bitter(
        // letterSpacing: 1,
        wordSpacing: 1,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 15),
  );
}

Widget number(font) {
  return Text(
    font,
    style: GoogleFonts.bitter(
        // letterSpacing: 1,
        wordSpacing: 1,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 20),
  );
}
