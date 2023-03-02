


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metals_details/Dashboard.dart';
import 'package:metals_details/SideNavigation.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class MaterialList extends StatefulWidget {
  MaterialList(this.user, {Key? key}) : super(key: key);

  final MaterialDetails user;

  @override
  State<MaterialList> createState() => _MaterialListState();
}

class _MaterialListState extends State<MaterialList> {
  List<MaterialDetails> materials = <MaterialDetails>[];



  late MaterialDataSource materialDataSource;

  @override
  void initState() {
    super.initState();
    materials = getMaterialData();
     materialDataSource = MaterialDataSource(materialsData: materials);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //const Color(0xffdcdbdc),

      backgroundColor: const Color(0xffdcdbdc),

      body: Row(
        children: [
          CustomDrawer(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: SingleChildScrollView(
                child: Container(
                  height: 600,
                  child: SfDataGridTheme(
                    data: SfDataGridThemeData(
                      headerColor: const Color(0xff031c30),
                    ),
                    child: SfDataGrid(
                      allowSorting: true,
                      allowMultiColumnSorting: true,
                      // showSortNumbers: true,
                      source: materialDataSource,
                      columnWidthMode: ColumnWidthMode.fill,
                      rowHeight: 50,

                      columns: <GridColumn>[
                        GridColumn(
                            columnName: 'metal',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: Text('Metals',
                                    style: GoogleFonts.bitter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)))),
                        GridColumn(
                            columnName: 'quantity',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: Text('Added Quantity',
                                    style: GoogleFonts.bitter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)))),
                        GridColumn(
                            columnName: 'cost',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: Text('Cost per Gram',
                                    style: GoogleFonts.bitter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)))),
                        GridColumn(
                            columnName: 'tGst',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: Text('Without GST',
                                    style: GoogleFonts.bitter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)))),
                        GridColumn(
                            columnName: 'gst',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: Text('GST',
                                    style: GoogleFonts.bitter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)))),
                        GridColumn(
                            columnName: 'total',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: Text(
                                  'Total',
                                  style: GoogleFonts.bitter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                ))),
                      ],
                      gridLinesVisibility: GridLinesVisibility.both,
                      headerGridLinesVisibility: GridLinesVisibility.both,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<MaterialDetails> getMaterialData() {
    return [
      MaterialDetails(
          //double.parse('$group1');
          widget.user.aMetal ,
          widget.user.quantity,
          widget.user.cost,
          widget.user.tGst,
          widget.user.gst,
          widget.user.total,
          widget.user.rMetal,
          widget.user.rQuantity,
          widget.user.rCost,
          widget.user.rTotal
      )
    ];
  }
}

class MaterialDataSource extends DataGridSource {
  MaterialDataSource({required List<MaterialDetails> materialsData}) {
    _materialsData = materialsData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'metal', value: e.aMetal),
              DataGridCell<double>(columnName: 'quantity', value: e.quantity+100),
              DataGridCell<double>(columnName: 'cost', value: e.cost-1),
              DataGridCell<String>(columnName: 'tGst', value: e.tGst),
              DataGridCell<String>(columnName: 'gst', value: e.gst),
              DataGridCell<String>(columnName: 'total', value: e.total),
            ]))
        .toList();
  }

  List<DataGridRow> _materialsData = [];

  @override
  List<DataGridRow> get rows => _materialsData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          child: number(
            '${e.value}',
            // style: getTextStyle(),
          ),
        ),
      );
    }).toList());
  }
}

class MaterialDetails {
  //
  MaterialDetails(this.aMetal, this.quantity, this.cost, this.tGst, this.gst,
      this.total, this.rMetal, this.rQuantity, this.rCost, this.rTotal);

  // final String material;
   String aMetal;

  double quantity;

   double cost;

  String tGst;

   String gst;

   String total;

   String rMetal;

   String rQuantity;

   String rCost;

   String rTotal;
}
