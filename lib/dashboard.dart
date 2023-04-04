import 'package:flutter/material.dart';
import 'package:trackr/CustomText.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
                child: SingleChildScrollView(
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var i = 0; i < 4; i++)
                                Container(
                                  height: Mheight * 0.075,
                                  width: Mheight * 0.075,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: Color(0xFF407BFF), width: 1),
                                  ),
                                  child: Center(
                                      child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    iconSize: 35,
                                    color: Color(0xFF407BFF),
                                    onPressed: () {},
                                    icon: Icon(Icons.business_center_sharp),
                                  )),
                                )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
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
                  child: Image.asset('assets/images/Plus_logo.png'),
                )),
          ],
        ),
      ),
    );
  }
}
