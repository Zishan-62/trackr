import 'package:flutter/material.dart';
import 'package:trackr/CustomText.dart';
import 'package:trackr/global.dart';

class addTask extends StatefulWidget {
  const addTask({super.key});

  @override
  State<addTask> createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
  @override
  String dropdownvalue = 'Work';

  // List of items in our dropdown menu
  var items = [
    'Work',
    'Personal',
    'Shopping',
    'Health',
    // 'Item 5',
  ];
  TextEditingController desc = TextEditingController();
  Widget build(BuildContext context) {
    var Mheight = MediaQuery.of(context).size.height;
    var Mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
      body: Padding(
        padding: EdgeInsets.only(
          left: Mwidth * 0.11,
          right: Mwidth * 0.11,
        ),
        child: Stack(
          children: [
            Positioned(
                top: 100,
                child: Container(
                  decoration: BoxDecoration(color: Color(0xFF407BFF)),
                  height: 900,
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.only(left: 23.0, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Mheight * 0.1,
                        ),
                        CustomText(
                          text: 'Subject',
                          textcolor: Colors.white,
                          fontSize: 22,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          width: double.infinity,
                          height: 40,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8),
                            child: DropdownButton(
                              isExpanded: true,
                              underline: Container(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.0, style: BorderStyle.none),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                ),
                              ),
                              borderRadius: BorderRadius.circular(5),
                              // Initial Value
                              value: dropdownvalue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Mheight * 0.046,
                        ),
                        CustomText(
                          text: 'Description',
                          textcolor: Colors.white,
                          fontSize: 22,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: double.infinity,
                          height: Mheight * 0.28,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: desc,
                              style: TextStyle(fontSize: 20),
                              maxLines: 6,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                  hintText: 'Enter Description',
                                  border: InputBorder.none),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
                left: Mwidth * 0.25,
                top: 60,
                child: Image.asset('assets/images/tick.png')),
            Positioned(
                bottom: 20,
                child: SizedBox(
                  height: Mheight * 0.07,
                  width: Mwidth * 0.8,
                  child: Padding(
                    padding: EdgeInsets.only(left: 23.0, right: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {
                          if (dropdownvalue == 'Work') {
                            setState(() {
                              work.add({
                                'category': dropdownvalue,
                                'description': desc.text,
                                'isdone': false
                              });
                              print(work);
                            });
                          } else if (dropdownvalue == 'Personal') {
                            setState(() {
                              personal.add({
                                'category': dropdownvalue,
                                'description': desc.text,
                                'isdone': false
                              });
                              print(personal);
                            });
                          } else if (dropdownvalue == 'Shopping') {
                            setState(() {
                              shopping.add({
                                'category': dropdownvalue,
                                'description': desc.text,
                                'isdone': false
                              });
                              print(shopping);
                            });
                          } else {
                            setState(() {
                              health.add({
                                'category': dropdownvalue,
                                'description': desc.text,
                                'isdone': false
                              });
                              print(health);
                            });
                          }
                          print(dropdownvalue);
                          Navigator.pushNamed(context, 'dashboard');
                        },
                        child: Center(
                          child: CustomText(
                            text: 'Submit',
                            fontSize: 18,
                          ),
                        )),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
