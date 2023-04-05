import 'package:flutter/material.dart';
import 'package:trackr/CustomText.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  TextEditingController countrycode = TextEditingController();
  bool isLoading = false;
  var phone = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countrycode.text = "+91";
  }

  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    var Mheight = MediaQuery.of(context).size.height;
    var Mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    child: Center(
                      child: CustomText(
                        text: 'Log In',
                        textcolor: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.w400,
                      ),
                    ))),
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
              top: 30 + Mheight * 0.129,
              bottom: Mheight * 0.080,
              child: Container(
                // width: double.infinity,
                width: Mwidth * 0.84,
                // height: Mheight * 0.,
                decoration: BoxDecoration(color: Colors.white),

                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: Mheight * 0.166,
                        ),
                        Wrap(children: [
                          Row(children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            //country code
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: TextFormField(
                                  style: TextStyle(
                                      color: Color(0xFF3C5BFA),
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500),
                                  keyboardType: TextInputType.phone,
                                  controller: countrycode,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Color(0xFFF4F4F4),
                                  ),
                                )),
                            // bich mae gap kae liyae
                            Text(
                              '|',
                              style:
                                  TextStyle(fontSize: 40, color: Colors.grey),
                            ),
                            //phone no kae liyae
                            Expanded(
                                child: TextFormField(
                              // maxLength: 10,
                              onChanged: (value) {
                                phone = value;
                              },
                              style: TextStyle(
                                  color: Color(0xFF3C5BFA),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500),
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value!.isEmpty ||
                                    value.length < 10 ||
                                    !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                        .hasMatch(value)) {
                                  //  r'^[0-9]{10}$' pattern plain match number with length 10
                                  return "Enter Correct Phone Number";
                                } else {
                                  return "Mobile must contain 10 Digit";
                                }
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFF4F4F4),
                                border: InputBorder.none,
                                hintText: 'Enter Mobile Number',
                                hintStyle: TextStyle(fontFamily: "Montserrat"),
                              ),
                            ))
                          ]),
                        ]),
                        SizedBox(
                          height: Mheight * 0.062,
                        ),
                        SizedBox(
                          height: Mheight * 0.0604,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: Color(0xFF407BFF)),
                            onPressed: () {
                              Navigator.pushNamed(context, 'otp');
                            },
                            child: Center(
                                child: CustomText(
                              text: 'Log in',
                              fontSize: 24,
                              textcolor: Colors.white,
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(text: 'Don’t have an account? '),
                            CustomText(
                              text: 'Create one',
                              textcolor: Color(0xFF3C5BFA),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                left: Mwidth * 0.28,
                bottom: Mheight * 0.02,
                child: Center(
                  child: Image.asset('assets/images/Login_logo.png'),
                ))
          ],
        ),
      ),
    );
  }
}
