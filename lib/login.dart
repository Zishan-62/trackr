import 'package:flutter/material.dart';
import 'package:trackr/CustomText.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
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
                          TextFormField(
                            // onSaved: (newValue) => _username = newValue,
                            style: const TextStyle(color: Color(0xff4285f4)),
                            decoration: InputDecoration(
                              // focusedBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10)),
                              // enabledBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10)),
                              filled: true,
                              fillColor: Color(0xFFF0F0F0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'Enter Number',
                              hintStyle: TextStyle(
                                color: Color(0xFFB6B6B6),
                              ),
                            ),
                          ),
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
