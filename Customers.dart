import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metals_details/SideNavigation.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

/*
* Date: 25/02/2023
*
* Customer Detail for Success or Failure details
*
 */

class CustomersDetail extends StatefulWidget {
  const CustomersDetail({Key? key}) : super(key: key);

  @override
  State<CustomersDetail> createState() => _CustomersDetailState();
}

class _CustomersDetailState extends State<CustomersDetail> {
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
                          //.fromARGB(255, 97, 2, 221)
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
                                columnName: 'email',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Email',
                                      style: GoogleFonts.bitter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ))),
                            GridColumn(
                                columnName: 'gender',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('Gender',
                                        style: GoogleFonts.bitter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                            GridColumn(
                                columnName: 'area',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('Area',
                                        style: GoogleFonts.bitter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                            GridColumn(
                                columnName: 'city',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'City',
                                      style: GoogleFonts.bitter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ))),
                            GridColumn(
                                columnName: 'state',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('State',
                                        style: GoogleFonts.bitter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                            GridColumn(
                                columnName: 'status',
                                label: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text('Status',
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
      Employee(
        'James',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
        ' Nungambakam ',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Kathryn',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
        ' Nungambakam ',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Lara',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
        ' Nungambakam ',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Michael',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
        ' Nungambakam ',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Martin',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
        ' Nungambakam ',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Newberry',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
        ' Nungambakam ',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Balncy',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
        ' Nungambakam ',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Perry',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
        ' Nungambakam ',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Gable',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
        ' Nungambakam ',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Grimes',
        9092963020,
        'john@gmail.com',
        'Male',
        'Thirumoorthy Nagar',
          ' Nungambakam ',
        'Chennai',
        'ENABLE'
      ),
      Employee(
        'Grimes',
        9092963020,
        'kumar@gmail.com',
        'Male',
        'Anna Nagar',
        'Kilbakam',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Grimes',
        9092963020,
        'kumar@gmail.com',
        'Male',
        'Anna Nagar',
        'Kilbakam',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Grimes',
        9092963020,
        'kumar@gmail.com',
        'Male',
        'Anna Nagar',
        'Kilbakam',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Grimes',
        9092963020,
        'kumar@gmail.com',
        'Male',
        'Anna Nagar',
        'Kilbakam',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Grimes',
        9092963020,
        'kumar@gmail.com',
        'Male',
        'Anna Nagar',
        'Kilbakam',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Grimes',
        9092963020,
        'kumar@gmail.com',
        'Male',
        'Anna Nagar',
        'Kilbakam',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Grimes',
        9092963020,
        'indhu@gmail.com',
        'Female',
        'Bannu Nagar',
        'Ambattur',
        'Chennai',
        'ENABLE',
      ),
      Employee(
        'Grimes',
        9092963020,
        'indhu@gmail.com',
        'Female',
        'Bannu Nagar',
        'Ambattur',
        'Chennai',
        'ENABLE',
      ),
      Employee('Grimes', 9092963020, 'indhu@gmail.com', 'Female', 'Bannu Nagar',
          'Ambattur', 'Chennai', 'ENABLE'),
      Employee('Grimes', 9092963020, 'indhu@gmail.com', 'Female', 'Bannu Nagar',
          'Ambattur', 'Chennai', 'ENABLE'),
      Employee('Grimes', 9092963020, 'indhu@gmail.com', 'Female', 'Bannu Nagar',
          'Ambattur', 'Chennai', 'ENABLE'),
      Employee('Grimes', 9092963020, 'indhu@gmail.com', 'Female', 'Bannu Nagar',
          'Ambattur', 'Chennai', 'ENABLE'),
      Employee('Grimes', 9092963020, 'indhu@gmail.com', 'Female', 'Bannu Nagar',
          'Ambattur', 'Chennai', 'ENABLE'),
      Employee('Grimes', 9092963020, 'indhu@gmail.com', 'Female', 'Bannu Nagar',
          'Ambattur', 'Chennai', 'ENABLE'),
    ];
  }
}

class Employee {
  Employee(this.name, this.phone, this.email, this.gender, this.area, this.city,
      this.state, this.status);

  final String name;

  final int phone;

  final String email;

  final String gender;

  final String area;

  final String city;

  final String state;

  final String status;
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<int>(columnName: 'phone', value: e.phone),
              DataGridCell<String>(columnName: 'email', value: e.email),
              DataGridCell<String>(columnName: 'gender', value: e.gender),
              DataGridCell<String>(columnName: 'area', value: e.area),
              DataGridCell<String>(columnName: 'city', value: e.city),
              DataGridCell<String>(columnName: 'state', value: e.state),
              DataGridCell<String>(columnName: 'status', value: e.status),
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
        if (e.columnName == 'status') {
          return const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color:Colors.lightGreen);
        } else {
          return GoogleFonts.bitter(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black);
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
