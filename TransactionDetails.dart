import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metals_details/SideNavigation.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

/*
* Date: 21/02/2023
*
* Transaction Detail for Success or Failure details
*
 */

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  State<TransactionDetails> createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  bool state = true;
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
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
              child: Material(
                  elevation: 15,
                  color: Colors.white,
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
                          source: employeeDataSource,
                          columnWidthMode: ColumnWidthMode.fill,
                          rowHeight: 50,

                          columns: <GridColumn>[
                            GridColumn(
                                columnName: 'date',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'DATE',
                                      style: GoogleFonts.bitter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ))),
                            GridColumn(
                                columnName: 'name',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('Name',
                                        style: GoogleFonts.bitter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                            GridColumn(
                                columnName: 'phone',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('Phone',
                                        style: GoogleFonts.bitter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                            GridColumn(
                                columnName: 'order',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('Order Type',
                                        style: GoogleFonts.bitter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                            GridColumn(
                                columnName: 'metal',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('Metal',
                                        style: GoogleFonts.bitter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                            GridColumn(
                                columnName: 'weight',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Weight',
                                      style: GoogleFonts.bitter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ))),
                            GridColumn(
                                columnName: 'amount',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('Amount',
                                        style: GoogleFonts.bitter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                            GridColumn(
                                columnName: 'order_status',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('Order Status',
                                        style: GoogleFonts.bitter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                          ],
                          gridLinesVisibility: GridLinesVisibility.both,
                          headerGridLinesVisibility: GridLinesVisibility.both,
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee('03-05-2022', 'James', 9092963020, 'Gift', 'Gold', 0.0002, 0,
          'SUCCESS'),
      Employee('03-05-2022', 'Kathryn', 9092963020, 'Gift', 'Gold', 0.0002, 0,
          'SUCCESS'),
      Employee('03-05-2022', 'Lara', 9092963020, 'Gift', 'Gold', 0.0002, 0,
          'SUCCESS'),
      Employee('03-05-2022', 'Michael', 9092963020, 'Gift', 'Gold', 0.0002, 0,
          'SUCCESS'),
      Employee('03-05-2022', 'Martin', 9092963020, 'Gift', 'Gold', 0.0002, 2.04,
          'SUCCESS'),
      Employee('04-05-2022', 'Newberry', 9092963020, 'Sell', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('03-05-2022', 'Balncy', 9092963020, 'Sip', 'Gold', 0.0002, 1000,
          'SUCCESS'),
      Employee('04-05-2022', 'Perry', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Gable', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
      Employee('04-05-2022', 'Grimes', 9092963020, 'Buy', 'Gold', 0.0002, 1,
          'SUCCESS'),
    ];
  }
}

class Employee { //
  Employee(this.date, this.name, this.phone, this.order, this.metal,
      this.weight, this.amount, this.success);

  final String date;

  final String name;

  final int phone;

  final String order;

  final String metal;

  final double weight;

  final double amount;

  final String success;
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'date', value: e.date),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<int>(columnName: 'phone', value: e.phone),
              DataGridCell<String>(columnName: 'order', value: e.order),
              DataGridCell<String>(columnName: 'metal', value: e.metal),
              DataGridCell<double>(columnName: 'weight', value: e.weight),
              DataGridCell<double>(columnName: 'amount', value: e.amount),
              DataGridCell<String>(columnName: 'success', value: e.success),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      TextStyle? getTextStyle() {
        if (e.columnName == 'success') {
          return const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color:Colors.lightGreen);
        } else {
          return  GoogleFonts.bitter(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.black);
        }
      }

      return Container(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          child: Text(
            e.value.toString(),
            style: getTextStyle(),
          ),
        ),
      );
    }).toList());
  }
}
