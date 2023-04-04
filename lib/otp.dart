import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:trackr/CustomText.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  var code = '';
  String otpPin = "";
  TextEditingController otp = TextEditingController();
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
                        text: 'ENTER OTP',
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
                        Pinput(
                          controller: otp,
                          defaultPinTheme: PinTheme(
                              textStyle: TextStyle(
                                  color: Color(0xFF5669FF),
                                  fontSize: Mheight * 0.0319,
                                  fontWeight: FontWeight.w500),
                              height: Mheight * 0.09,
                              width: Mheight * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFF0F0F0),
                              )),
                          length: 6,
                          pinputAutovalidateMode:
                              PinputAutovalidateMode.onSubmit,
                          showCursor: true,
                          onChanged: (value) {
                            code = value;
                            setState(() {
                              otpPin = value;
                            });
                          },
                        ),
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
                              Navigator.pushNamed(context, 'dashboard');
                            },
                            child: Center(
                                child: CustomText(
                              text: 'Submit',
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
                            CustomText(text: 'Resend OTP? '),
                            CustomText(
                              text: 'Click here',
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
                  child: Image.asset('assets/images/otp.png'),
                ))
          ],
        ),
      ),
    );
  }
}
