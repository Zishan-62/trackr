import 'package:flutter/material.dart';
import 'package:trackr/CustomText.dart';

import 'global.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List categoryName = ['Work', 'Personal', 'Shopping', 'Health'];
  bool _value = false;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    var Mheight = MediaQuery.of(context).size.height;
    var Mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout_rounded),
            color: Colors.blue,
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: Mwidth * 0.077, right: Mwidth * 0.077),
        child: Stack(
          children: [
            // Container(width:,)
            Positioned(
                top: 30,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF407BFF),
                      borderRadius: BorderRadius.circular(15)),
                  width: Mwidth * 0.84,
                  height: Mheight * 0.129,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Manage your time\nwell with Trackr',
                        textcolor: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                      Image.asset('assets/images/File.png')
                    ],
                  ),
                )),
            Positioned(
              top: 30 + Mheight * 0.129,
              child: Container(
                width: Mwidth * 0.84,
                height: 450,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 17,
                    ),
                    CustomText(
                      text: 'Categories',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // for (var i = 0; i < 4; i++)
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _index = 0;
                                          print(_index);
                                        });
                                      },
                                      child: Container(
                                        height: Mheight * 0.075,
                                        width: Mheight * 0.075,
                                        decoration: BoxDecoration(
                                          color: _index == 0
                                              ? Color(0xFF407BFF)
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: _index == 0
                                                  ? Colors.white
                                                  : Color(0xFF407BFF),
                                              width: 1),
                                        ),
                                        child: Center(
                                            child: IconButton(
                                          padding: EdgeInsets.all(0),
                                          iconSize: 35,
                                          color: _index == 0
                                              ? Colors.white
                                              : Color(0xFF407BFF),
                                          onPressed: () {
                                            setState(() {
                                              _index = 0;
                                              print(_index);
                                              print(work[0]['category']);
                                            });
                                          },
                                          icon:
                                              Icon(Icons.business_center_sharp),
                                        )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(text: categoryName[0])
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _index = 1;
                                        });
                                      },
                                      child: Container(
                                        height: Mheight * 0.075,
                                        width: Mheight * 0.075,
                                        decoration: BoxDecoration(
                                          color: _index == 1
                                              ? Color(0xFF407BFF)
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: _index == 1
                                                  ? Colors.white
                                                  : Color(0xFF407BFF),
                                              width: 1),
                                        ),
                                        child: Center(
                                            child: IconButton(
                                          padding: EdgeInsets.all(0),
                                          iconSize: 35,
                                          color: _index == 1
                                              ? Colors.white
                                              : Color(0xFF407BFF),
                                          onPressed: () {
                                            setState(() {
                                              _index = 1;
                                              print(_index);
                                            });
                                          },
                                          icon: Icon(Icons.person_2_sharp),
                                        )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(text: categoryName[1])
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _index = 2;
                                      },
                                      child: Container(
                                        height: Mheight * 0.075,
                                        width: Mheight * 0.075,
                                        decoration: BoxDecoration(
                                          color: _index == 2
                                              ? Color(0xFF407BFF)
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: _index == 2
                                                  ? Colors.white
                                                  : Color(0xFF407BFF),
                                              width: 1),
                                        ),
                                        child: Center(
                                            child: IconButton(
                                          padding: EdgeInsets.all(0),
                                          iconSize: 35,
                                          color: _index == 2
                                              ? Colors.white
                                              : Color(0xFF407BFF),
                                          onPressed: () {
                                            setState(() {
                                              _index = 2;
                                              print(_index);
                                            });
                                          },
                                          icon:
                                              Icon(Icons.shopping_bag_rounded),
                                        )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(text: categoryName[2])
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _index = 3;
                                      },
                                      child: Container(
                                        height: Mheight * 0.075,
                                        width: Mheight * 0.075,
                                        decoration: BoxDecoration(
                                          color: _index == 3
                                              ? Color(0xFF407BFF)
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: _index == 3
                                                  ? Colors.white
                                                  : Color(0xFF407BFF),
                                              width: 1),
                                        ),
                                        child: Center(
                                            child: IconButton(
                                          padding: EdgeInsets.all(0),
                                          iconSize: 35,
                                          color: _index == 3
                                              ? Colors.white
                                              : Color(0xFF407BFF),
                                          onPressed: () {
                                            setState(() {
                                              _index = 3;
                                              print(_index);
                                            });
                                          },
                                          icon: Icon(Icons.medication),
                                        )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(text: categoryName[3])
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            _index == 0
                                ? CustomText(
                                    text:
                                        'You have ${work.length} Tasks for Today',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  )
                                : _index == 1
                                    ? CustomText(
                                        text:
                                            'You have ${personal.length} Tasks for Today',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      )
                                    : _index == 2
                                        ? CustomText(
                                            text:
                                                'You have ${shopping.length} Tasks for Today',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          )
                                        : CustomText(
                                            text:
                                                'You have ${health.length} Tasks for Today',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                            _index == 0
                                ? ListView.builder(
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: work.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CheckboxListTile(
                                        selected: work[index]["isdone"],
                                        value: work[index]["isdone"],
                                        onChanged: (value) {
                                          setState(() {
                                            work[index]["isdone"] = value!;
                                          });
                                        },
                                        title: CustomText(
                                            text: work[index]["category"]),
                                      );
                                    })
                                : _index == 1
                                    ? ListView.builder(
                                        physics: ScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: personal.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return CheckboxListTile(
                                            selected: personal[index]["isdone"],
                                            value: personal[index]["isdone"],
                                            onChanged: (value) {
                                              setState(() {
                                                personal[index]["isdone"] =
                                                    value!;
                                              });
                                            },
                                            title: CustomText(
                                                text: personal[index]
                                                    ["category"]),
                                          );
                                        })
                                    : _index == 2
                                        ? ListView.builder(
                                            physics: ScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: shopping.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return CheckboxListTile(
                                                selected: shopping[index]
                                                    ["isdone"],
                                                value: shopping[index]
                                                    ["isdone"],
                                                onChanged: (value) {
                                                  setState(() {
                                                    shopping[index]["isdone"] =
                                                        value!;
                                                  });
                                                },
                                                title: CustomText(
                                                  text: shopping[index]
                                                      ["category"],
                                                ),
                                              );
                                            })
                                        : ListView.builder(
                                            physics: ScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: health.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return CheckboxListTile(
                                                selected: health[index]
                                                    ["isdone"],
                                                value: health[index]["isdone"],
                                                onChanged: (value) {
                                                  setState(() {
                                                    health[index]["isdone"] =
                                                        value!;
                                                  });
                                                },
                                                title: CustomText(
                                                    text: health[index]
                                                        ["category"]),
                                              );
                                            })
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Positioned(
                left: Mwidth * 0.039,
                bottom: 0,
                child: Container(
                  height: Mheight * 0.075,
                  width: Mwidth * 0.76,
                  decoration: BoxDecoration(
                    color: Color(0xFF407BFF),
                  ),
                )),
            Positioned(
                left: Mwidth * 0.32,
                bottom: Mheight * 0.02,
                child: Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'addtask');
                      },
                      child: Image.asset('assets/images/Plus_logo.png')),
                )),
          ],
        ),
      ),
    );
  }
}
