import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metals_details/SideNavigation.dart';

/*
* Date: 24/02/2023
*
* Title: SellOrder Details
*
*
*
 */


class SellOrders extends StatefulWidget {
  const SellOrders({Key? key}) : super(key: key);

  @override
  State<SellOrders> createState() => _SellOrderState();
}

class _SellOrderState extends State<SellOrders> {
  String selectedValue = "1";
  var items = [
    '1',
    '2',
    '3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdcdbdc),
      body: Row(
        children: [
          CustomDrawer(),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(25),
                child: Card(
                    elevation: 20,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(35),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('Show',
                                        style: GoogleFonts.bitter(
                                            fontSize: 16, color: Colors.black)),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      width: 60.0,
                                      height: 40,
                                      child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.fromLTRB(
                                                10, 14, 10, 5),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1.5,
                                                  color: Color(0xffdcdbdc)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1.5,
                                                  color: Color(0xffdcdbdc)),
                                            ),
                                            fillColor: Colors.white,
                                            filled: true,
                                          ),
                                          value: selectedValue,
                                          icon: const Icon(
                                              Icons.keyboard_arrow_down),
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(
                                                items,
                                                style: GoogleFonts.bitter(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              selectedValue = newValue!;
                                            });
                                          }),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Entries',
                                      style: GoogleFonts.bitter(
                                          fontSize: 16, color: Colors.black),
                                    )
                                  ],
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Search',
                                        style: GoogleFonts.bitter(
                                            fontSize: 16, color: Colors.black)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 150,
                                      color: Colors.white,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10, 14, 10, 5),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20, // <-- SEE HERE
                            ),
                            tableData(getDetails),
                            SizedBox(
                              height: 20, // <-- SEE HERE
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  OutlinedButton(
                                    child: Text('Copy'),
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0xff031c30),
                                      primary: Colors.white,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  OutlinedButton(
                                    child: Text('CSV'),
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0xff031c30),
                                      primary: Colors.white,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  OutlinedButton(
                                    child: Text('Excel'),
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0xff031c30),
                                      primary: Colors.white,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  OutlinedButton(
                                    child: Text('PDF'),
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0xff031c30),
                                      primary: Colors.white,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  OutlinedButton(
                                    child: Text('Print'),
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0xff031c30),
                                      primary: Colors.white,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    OutlinedButton(
                                      child: Text('Previous'),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.white30,
                                        primary: Colors.black,
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic),
                                      ),
                                      onPressed: () {},
                                    ),
                                    Padding(padding: EdgeInsets.all(4),

                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      color: Colors.purple,
                                      child: Center(
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    ),
                                    OutlinedButton(
                                      child: Text('Next'),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.white30,
                                        primary: Colors.black,
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ))),
          ),
        ],
      ),
    );
  }

  List<SellOrderDetail> getDetails() {
    return [
      SellOrderDetail(Icon(Icons.create_rounded), '23 / 10 / 2019', 'John',
          8870652304, 'HDFC BANK LTD', 'Gold', 0.0002, 2, 'SUCCESS'),
      SellOrderDetail(const Icon(Icons.create_rounded), '23 / 10 / 2019',
          'John', 8870652304, 'HDFC BANK LTD', 'Gold', 0.0002, 2, 'SUCCESS'),
      SellOrderDetail(const Icon(Icons.create_rounded), '23 / 10 / 2019',
          'John', 8870652304, 'HDFC BANK LTD', 'Gold', 0.0002, 2, 'SUCCESS'),
    ];
  }

  Widget tableData(sell) => DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Color(0xff031c30)),
        onSelectAll: (b) {},
        sortColumnIndex: 0,
        sortAscending: true,
        showBottomBorder: true,
        columns: const <DataColumn>[

          DataColumn(label: Text("Edit",style: TextStyle(color: Colors.white,))),
          DataColumn(label: Text("Date",style: TextStyle(color: Colors.white,))),
          DataColumn(label: Text("Name",style: TextStyle(color: Colors.white,))),
          DataColumn(label: Text("Phone",style: TextStyle(color: Colors.white,))),
          DataColumn(label: Text("Bank Name",style: TextStyle(color: Colors.white,))),
          DataColumn(label: Text("Metal",style: TextStyle(color: Colors.white,))),
          DataColumn(label: Text("Weight",style: TextStyle(color: Colors.white,))),
          DataColumn(label: Text("Amount",style: TextStyle(color: Colors.white,))),
          DataColumn(label: Text("Order Status",style: TextStyle(color: Colors.white,))),
        ],
        rows: getDetails()
            .map(
              (data) => DataRow(
                cells: [
                  DataCell(
                    Icon(Icons.create_rounded),
                  ),
                  DataCell(
                    Text(data.date.toString()),
                  ),
                  DataCell(
                    Text(data.name.toString()),
                  ),
                  DataCell(
                    Text(data.phone.toString()),
                  ),
                  DataCell(
                    Text(data.bank.toString()),
                  ),
                  DataCell(
                    Text(data.metal.toString()),
                  ),
                  DataCell(
                    Text(data.weight.toString()),
                  ),
                  DataCell(
                    Text(data.amount.toString()),
                  ),
                  DataCell(
                    Text(data.success.toString()),
                  ),
                ],
              ),
            )
            .toList(),
      );
}

class SellOrderDetail {
  SellOrderDetail(this.icon, this.date, this.name, this.phone, this.bank,
      this.metal, this.weight, this.amount, this.success);

  final Icon icon;

  final String date;

  final String name;

  final int phone;

  final String bank;

  final String metal;

  final double weight;

  final double amount;

  final String success;
}

