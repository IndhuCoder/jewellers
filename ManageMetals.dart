import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metals_details/SideNavigation.dart';

import 'ListMaterial.dart';

/*
* Date: 24/02/2023
*
* Title: ManageMetals Details for add and remove the metals
*
* Author: Indu Hira
*
 */
class ManageMetals extends StatefulWidget {
  const ManageMetals({super.key});

  @override
  State<ManageMetals> createState() => _ManageMetals();
}

class _ManageMetals extends State<ManageMetals> {

  List<MaterialDetails>_ManageMetal=[];
  String addSelectedValue = "Gold";
  String removeSelectedValue = "Gold";
  var items = [
    'Gold',
    'Silver',
    'Platinum',
  ];
  List<String> text = [];

  // allow the valid of the form key


  final _formKey = GlobalKey<FormState>();

  //Add


  final _quantityController = TextEditingController();
  final _gramsController = TextEditingController();
  final _tGstController = TextEditingController();
  final _gstController = TextEditingController();
  final _totalController = TextEditingController();

  //remove

  final _rQuantityController = TextEditingController();
  final _rGramsController = TextEditingController();
  final _rTotalController = TextEditingController();

  @override
  void dispose() {
    _quantityController.dispose();
    _gramsController.dispose();
    _tGstController.dispose();
    _gstController.dispose();
    _totalController.dispose();

    _rQuantityController.dispose();
    _rGramsController.dispose();
    _rTotalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
        body: Row(children: [
          CustomDrawer(),
          Expanded(
              child: Center(
            child: Container(
              width: 1000,
              child: SingleChildScrollView(
                  child: Column(
                children: <Widget>[
                  _whiteCardForAdd("Add Quantity of Metal", "Add"),
                  SizedBox(
                    height: 25,
                  ),
                  _whiteCardForRemove("Remove Quantity of Metal", "Remove")
                ],
              )),
            ),
          ))
        ]));
  }

  Widget _whiteCardForAdd(heading, button) {
    return Container(
      // height: 400,

      child: Card(
        elevation: 15,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: GoogleFonts.bitter(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),

                // First Row
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text("Select Metal", " *"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300.0,
                          height: 40,
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 14, 10, 5),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Color(0xffdcdbdc)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: Color(0xffdcdbdc)),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              value: addSelectedValue,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: GoogleFonts.bitter(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  addSelectedValue = newValue!;
                                });
                              }),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text("Add Quantity(Gms) ", " *"),
                        SizedBox(
                          height: 10,
                        ),
                        _textField(
                            Colors.white,
                            Color(0xffdcdbdc),
                            _quantityController,
                            checkFieldEmpty

                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text("Cost per grams", " *"),
                        SizedBox(
                          height: 10,
                        ),
                        _textField(
                            Colors.white, Color(0xffdcdbdc), _gramsController,checkFieldEmpty),
                      ],
                    ),
                  ],
                ),

//Second Row
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text("Total without Gst", ""),
                        SizedBox(
                          height: 10,
                        ),
                        _textField(Color(0xffe8ecef), Color(0xffdcdbdc),
                            _tGstController,checkFieldEmpty),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text("GST ", ""),
                        SizedBox(
                          height: 10,
                        ),
                        _textField(Color(0xffe8ecef), Color(0xffdcdbdc),
                            _gstController,checkFieldEmpty),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text("Total with GST", ""),
                        SizedBox(
                          height: 10,
                        ),
                        _textField(Color(0xffe8ecef), Color(0xffdcdbdc),
                            _totalController,checkFieldEmpty),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MaterialButton(
                    height: 45,
                    minWidth: 100,
                    color: Color.fromARGB(255, 97, 2, 221),
                    onPressed: () {



                    if(  _formKey.currentState!.validate()) {
                      // int par = double.parse('$_quantityController.text') as int;

                  
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>
                              MaterialList(MaterialDetails(
                                  addSelectedValue,
                                  double.parse(_quantityController.text).roundToDouble() ,
                                 double.parse(_gramsController.text).roundToDouble()  , _tGstController.text ,
                                  _gstController.text , _totalController.text, removeSelectedValue,_rQuantityController.text,_rGramsController.text,_rTotalController.text)))
                      );
                    }
                    },
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
      ),
    );
  }

  Widget _whiteCardForRemove(heading, button) {
    return Container(
      // height: 400,
      width: double.infinity,
      child: Card(
        elevation: 15,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: GoogleFonts.bitter(
                    fontSize: 18,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),

              // First Row
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _text("Select Metal", " *"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 300.0,
                        height: 40,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 14, 10, 5),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.5, color: Color(0xffdcdbdc)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.5, color: Color(0xffdcdbdc)),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            value: removeSelectedValue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: GoogleFonts.bitter(
                                      fontSize: 15, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                removeSelectedValue = newValue!;
                              });
                            }),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _text("Enter Quantity(Gms) ", " *"),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(Colors.white, Color(0xffdcdbdc),_rQuantityController,checkFieldEmpty),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _text("Rate per grams", " *"),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(Colors.white, Color(0xffdcdbdc),_rGramsController,checkFieldEmpty),
                    ],
                  ),
                ],
              ),

//Second Row
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _text("Total", ""),
                      SizedBox(
                        height: 10,
                      ),
                      _textField(Color(0xffe8ecef), Color(0xffdcdbdc),_rTotalController,checkFieldEmpty),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: MaterialButton(
                  height: 45,
                  minWidth: 100,
                  color: Color.fromARGB(255, 97, 2, 221),
                  onPressed: () {},
                  child: Text(
                    "Remove",
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
  String? checkFieldEmpty(String? fieldContent) {
    //<-- add String? as a return type
    if(fieldContent!.isEmpty) {
      return 'Enter value';
    }
    return null;
  }

  Widget _textField(background_color, border_side, _controller,_validator) {
    return Container(
      width: 300,
      height: 40,
      child: TextField(
        controller: _controller,
        style: GoogleFonts.bitter(fontSize: 15, color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 14, 10, 5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: border_side),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: border_side),
          ),
          fillColor: background_color,
          filled: true,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          // keyboardType: TextInputType.,
          // inputFormatters: <TextInputFormatter>[
          //   FilteringTextInputFormatter.digitsOnly
          // ]
      ),
    );
  }
}


