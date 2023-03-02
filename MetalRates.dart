import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metals_details/SideNavigation.dart';
/*
* Date: 24/02/2023
*
* Title: MaterialRates Details about cost
*
* Author: Indu Hira
*
 */

class MaterialRates extends StatefulWidget {
  const MaterialRates({super.key});

  @override
  State<MaterialRates> createState() => _MaterialRates();
}

class _MaterialRates extends State<MaterialRates> {
  String? _radioValue; //Initial definition of radio button value
  String? choice;
  var _selectAll = false;
  var _gold = false;
  var _silver = false;
  var _platinum = false;

  void radioButtonChanges(value) {
    setState(() {
      _radioValue = value;
      switch (value) {
        case 'buy':
          choice = value;
          break;
        case 'sell':
          choice = value;
          break;
      }
      // debugPrint(choice); //Debug the choice in console
    });
  }





  // int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdcdbdc),
        body: Row(children: [
          CustomDrawer(),
          Expanded(
              child: Center(
            child: SingleChildScrollView(
              child: Container(
                // height: 725,
                width: 1100,
                child: _whiteCardRorRates("Add Material Rates"),
              ),
            ),
          ))
        ]));
  }

  Widget _whiteCardRorRates(heading) {
    return Container(
      child: Card(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(1.0),
        // ),
        elevation: 15,
        // margin: EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: GoogleFonts.bitter(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    _text("Select Rate Type", "*"),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 'buy',
                          groupValue: _radioValue,
                          onChanged: radioButtonChanges,
                        ),
                        Text(
                          "Buy",
                          style: GoogleFonts.bitter(
                              fontSize: 15, color: Colors.black),
                        ),
                        Radio(
                          value: 'sell',
                          groupValue: _radioValue,
                          onChanged: radioButtonChanges,
                        ),
                        Text(
                          "Sell",
                          style: GoogleFonts.bitter(
                              fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Divider(color: Color(0xffdcdbdc)),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Checkbox(
                    value: _selectAll,
                    onChanged: (bool? value) {
                      setState(() {
                        _gold = value!;
                        _silver = value;
                        _selectAll = value;
                        _platinum = value;
                      });
                    },
                  ),
                  Text(
                    'Select All',
                    style:
                        GoogleFonts.bitter(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: [
                        Checkbox(
                          value: _gold,
                          onChanged: (bool? value) {
                            setState(() => _gold = value!);
                          },
                        ),
                        Text(
                          'Select the checkBox to add the Gold Rate. ',
                          style: GoogleFonts.bitter(
                              fontSize: 14, color: Colors.black),
                        ),
                      ]),
                      MaterialButton(
                        height: 50,
                        minWidth: 305,
                        color: Color.fromARGB(255, 97, 2, 221),
                        onPressed: () {},
                        child: Text(
                          "Gold",
                          style: GoogleFonts.bitter(
                            fontSize: 17,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(color: Color(0xffdcdbdc)),
                      SizedBox(
                        height: 15,
                      ),
                      _text("Rate Per Gram", " *"),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(Colors.white, Color(0xffdcdbdc), "5150"),
                      SizedBox(
                        height: 10,
                      ),
                      _text("GST", ""),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(
                          Color(0xffe8ecef), Color(0xffdcdbdc), "154.50"),
                      SizedBox(
                        height: 10,
                      ),
                      _text("Rate with GST", ""),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(
                          Color(0xffe8ecef), Color(0xffdcdbdc), "5304.5"),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Checkbox(
                          value: _silver,
                          onChanged: (bool? value) {
                            setState(() => _silver = value!);
                          },
                        ),
                        Text(
                          'Select the checkBox to add the Silver Rate. ',
                          style: GoogleFonts.bitter(
                              fontSize: 14, color: Colors.black),
                        ),
                      ]),
                      MaterialButton(
                        height: 50,
                        minWidth: 305,
                        color: Color.fromARGB(255, 97, 2, 221),
                        onPressed: () {},
                        child: Text(
                          "Silver",
                          style: GoogleFonts.bitter(
                            fontSize: 17,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(color: Color(0xffdcdbdc)),
                      SizedBox(
                        height: 15,
                      ),
                      _text("Rate Per Gram", " *"),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(Colors.white, Color(0xffdcdbdc), "70"),
                      SizedBox(
                        height: 10,
                      ),
                      _text("GST", ""),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(Color(0xffe8ecef), Color(0xffdcdbdc), "2.10"),
                      SizedBox(
                        height: 10,
                      ),
                      _text("Rate with GST", ""),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(Color(0xffe8ecef), Color(0xffdcdbdc), "72.1"),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Checkbox(
                          value: _platinum,
                          onChanged: (bool? value) {
                            setState(() => _platinum = value!);
                          },
                        ),
                        Text(
                          'Select the checkBox to add the Platinum Rate. ',
                          style: GoogleFonts.bitter(
                              fontSize: 14, color: Colors.black),
                        ),
                      ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              height: 50,
                              minWidth: 305,
                              color: Color.fromARGB(255, 97, 2, 221),
                              // style: ElevatedButton.styleFrom(
                              //   fixedSize: const Size(300, 50),
                              //   primary: Color(0xFF6c45bc),
                              //   shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(2),
                              //   ),
                              // ),
                              onPressed: () {},
                              child: Text(
                                "Platinum",
                                style: GoogleFonts.bitter(
                                  fontSize: 17,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(color: Color(0xffdcdbdc)),
                      SizedBox(
                        height: 15,
                      ),
                      _text("Rate Per Gram", " *"),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(Colors.white, Color(0xffdcdbdc), "4000"),
                      SizedBox(
                        height: 10,
                      ),
                      _text("GST", ""),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(
                          Color(0xffe8ecef), Color(0xffdcdbdc), "120.00"),
                      SizedBox(
                        height: 10,
                      ),
                      _text("Rate with GST", ""),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(Color(0xffe8ecef), Color(0xffdcdbdc), "4120"),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ]),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: MaterialButton(
                  height: 40,
                  minWidth: 75,
                  color: Color.fromARGB(255, 97, 2, 221),
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style:
                        GoogleFonts.bitter(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField(background_color, border_side, hint) {
    return Container(
      width: 295,
      height: 35,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10, 14, 10, 5),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: border_side),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: border_side),
            ),
            fillColor: background_color,
            filled: true,
            labelStyle:
                GoogleFonts.bitter(height: 5, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _text(heading, must) {
    return Container(
      child: Row(
        children: [
          Text(
            heading,
            style: GoogleFonts.bitter(fontSize: 16, color: Colors.black),
          ),
          Text(
            must,
            style: GoogleFonts.bitter(fontSize: 16, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
