import 'package:flutter/material.dart';
import 'package:metals_details/ListMaterial.dart';


class Table_Screen extends StatefulWidget {

  const Table_Screen({super.key});

  @override
  State<Table_Screen> createState() => _Table_ScreenState();
}

class _Table_ScreenState extends State<Table_Screen> {
    List<MaterialDetails>_ManageMetal=[];
  @override
  Widget build(BuildContext context) {
    return  Container(child: bodyData(_ManageMetal),);
  }
  Widget bodyData(customer) => DataTable(
        headingRowColor: MaterialStateColor.resolveWith(
            (states) => Color.fromARGB(255, 255, 255, 255)),
        onSelectAll: (b) {},
        sortColumnIndex: 0,
        sortAscending: true,
        showBottomBorder: true,
        border:
            TableBorder.all(width: 0.3, color: Color.fromARGB(255, 0, 0, 0)),
        columns: <DataColumn>[
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Phone")),
          DataColumn(label: Text("Email")),
          DataColumn(label: Text("Gender")),
          DataColumn(label: Text("Area")),
          DataColumn(label: Text("City")),
          DataColumn(label: Text("State")),
          DataColumn(label: Text("Status")),
        ],
        rows: _ManageMetal
            .map(
              (data) => DataRow(
                cells: [
                  DataCell(
                    Text(data.aMetal.toString()),
                  ),
                  DataCell(
                    Text(data.quantity.toString()),
                  ),
                  DataCell(
                    Text(data.cost.toString()),
                  ),
                  DataCell(
                    Text(data.tGst.toString()),
                  ),
                  DataCell(
                    Text(data.gst.toString()),
                  ),
                  DataCell(
                    Text(data.total.toString()),
                  ),
                  DataCell(
                    Text(data.rMetal.toString()),
                  ),
                  DataCell(
                    Text(data.rQuantity.toString()),
                  ),
                  DataCell(
                    Text(data.rCost.toString()),
                  ),
                  DataCell(
                    Text(data.rTotal.toString()),
                  ),
                 
                ],
              ),
            )
            .toList(),
      );
  Widget NoActiveScheme() {
    return Center(
      child: Text('No Data Found'),
    );
  }
}



