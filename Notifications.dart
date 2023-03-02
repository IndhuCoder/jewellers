import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:metals_details/SideNavigation.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _Notification();
}

class _Notification extends State<Notifications> {
  double _scaleFactor = 1.0;
  _onPressed(BuildContext context) {
    print("click");
  }

  String? fileName;
  _pickFile() async {
    // print("START");
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;

    setState(() {
      fileName = result.files.first.name;
    });

    print(fileName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdcdbdc),
      body:  Row(

      children: [
      CustomDrawer(),
    Expanded(


      child: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 1000,
            child: Column(children: <Widget>[
              _whiteCardForNotification("Notofication"),
            ]),
          ),
        ),
      ),
    )])
    );
  }

  Widget _whiteCardForNotification(heading) {
    return Container(
      child: Card(
        elevation: 15,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                heading,
                style: GoogleFonts.bitter(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              _text("Title", " *"),
              SizedBox(
                height: 10,
              ),
              _textField(Colors.white, Color(0xffdcdbdc)),
              SizedBox(
                height: 15,
              ),
              _text("Content", " *"),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1.5, color: Color(0xffdcdbdc)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1.5, color: Color(0xffdcdbdc)),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                keyboardType: TextInputType.multiline,
                minLines: 3,
                maxLines: 5,
              ),
              SizedBox(
                height: 15,
              ),
              _text("Select image file", ""),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    // color: Color.fromARGB(255, 117, 115, 115)),
                    color: Color(0xffdcdbdc), width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    BouncingWidget(
                      scaleFactor: _scaleFactor,
                      onPressed: (() async {
                        await _pickFile();
                        // print("object");
                      }),
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xffdcdbdc),
                        ),
                        child: Center(
                          child: Text(
                            'Choose File',
                            style: GoogleFonts.bitter(
                              color: Colors.black, fontWeight: FontWeight.bold,
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: fileName == null
                          ? Container(
                        // height: 30,
                        // width: 500,
                        height: 50,

                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Row(
                            children: [
                              Text(
                                "No files chosen",
                                style: GoogleFonts.bitter(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 14,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                          : Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Text(
                                "$fileName",
                                style: GoogleFonts.bitter(
                                  color: Colors.black,
                                  fontSize: 14,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Notification will be delivered to all the members",
                style: GoogleFonts.bitter(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.yellow),
              ),
              SizedBox(
                height: 10,
              ),
              OutlinedButton.icon(
                icon: Icon(
                  Icons.verified,
                  color: Colors.white,
                  size: 20.0,
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(115, 40),
                  primary: Color(0xFF6c45bc),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                label: Text(
                  "Submit",
                  style: GoogleFonts.bitter(fontSize: 14, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
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
            style: GoogleFonts.bitter(fontSize: 17, color: Colors.black),
          ),
          Text(
            must,
            style: GoogleFonts.bitter(fontSize: 17, color: Colors.red),
          ),
        ],
      ),
    );
  }

  Widget _textField(background_color, border_side) {
    return Container(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: border_side),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: border_side),
          ),
          fillColor: background_color,
          filled: true,
        ),
      ),
    );
  }

// Widget _fileUploadButton() {
//   return Row(
//     children: [
//       ElevatedButton(
//         child: Text('UPLOAD FILE'),
//         onPressed: () async {
//           var picked = await FilePicker.platform.pickFiles();
//           if (picked != null) {
//             print(picked.files.first.name);
//           }
//         },
//       ),
//     ],
//   );
// }
}
