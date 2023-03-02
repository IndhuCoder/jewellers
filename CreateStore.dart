

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metals_details/SideNavigation.dart';

class CreateStores extends StatefulWidget {
  const CreateStores({super.key});

  @override
  State<CreateStores> createState() => _storeState();
}

class _storeState extends State<CreateStores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
        CustomDrawer(),
    Expanded(
       child:  Center(
      child: Container(
        color: const Color(0xffdcdbdc),
        // width: 550,
        // height: 650,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              // color: Color.fromARGB(255, 243, 242, 242),
              width: 560,
              height: 600,

              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.5, color: Colors.black54)),
              child: Padding(

                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create Store",
                        style: GoogleFonts.bitter(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      textfield1("Store Name*", "enetr store name"),
                      textfield1("Address 1*", "enter address 1"),
                      Row(
                        children: [
                          Column(
                            children: [
                              textfield('Address 2*', "enter address 2"),
                              textfield('Phone*', "enter city"),
                              textfield('Area*', "enter Phone"),
                              textfield('Pincode*', "enter Pincode")
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              textfield('Address 3*', "enter address 3"),
                              textfield('Email*', "enter email"),
                              textfield('city*', "enter city"),
                              textfield('State*', "enter state")
                            ],
                          ),
                        ],
                      ),
                      textfield('Manager Name', "enter manager name"),
                      Center(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Color.fromARGB(255, 46, 4, 153),
                          height: 40,
                          minWidth: 70,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    ))]));
  }
}

Widget textfield(font, hint) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          font,
          style: GoogleFonts.bitter(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 30,
          width: 250,
          // color: Color.fromARGB(255, 255, 255, 255),

          child: TextField(
            style: GoogleFonts.bitter(color: Colors.black),
            decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(10, 14, 10, 5),
                // enabledBorder: ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(255, 26, 25, 25)),
                  //<-- SEE HERE
                ),
                focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(
                  width: 1,
                  // color:
                  //     Color.fromARGB(255, 101, 68, 190)
                )),
                hintText: hint,
                hintStyle:
                    GoogleFonts.bitter(color: Colors.black87, fontSize: 15)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ]);
}

Widget textfield1(font, hint) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          font,
          style: GoogleFonts.bitter(
              fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 30,
          width: 250,
          color: Color.fromARGB(255, 255, 255, 255),
          child: TextField(
            style: GoogleFonts.bitter(color: Colors.black),
            decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(10, 14, 10, 5),
                // enabledBorder: ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(255, 26, 25, 25)),
                  //<-- SEE HERE
                ),
                focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(
                  width: 1,
                  // color:
                  //     Color.fromARGB(255, 101, 68, 190)
                )),
                hintText: hint,
                hintStyle:
                    GoogleFonts.bitter(color: Colors.black87, fontSize: 15)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ]);
}
