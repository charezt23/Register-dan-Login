import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/WidgetCollection/textfieldwithpadding.dart';
import 'package:login/register.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController emailctrl = TextEditingController();
  TextEditingController passctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 393,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFF2F0F0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                  BoxShadow(
                    color: Color(0x6B000000),
                    offset: Offset(0, 10),
                    blurRadius: 9.5,
                  ),
                ],
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.getFont(
                          'Nunito',
                          fontWeight: FontWeight.w900,
                          fontSize: 64,
                          letterSpacing: 2.6,
                          color: Color(0xFF3E3E3E),
                        ),
                        children: [
                          TextSpan(
                            text: 'Log',
                            style: GoogleFonts.getFont(
                              'Nunito',
                              fontWeight: FontWeight.w900,
                              fontSize: 64,
                              height: 1.3,
                              letterSpacing: 2.6,
                              color: Color(0xFF87D2D0),
                            ),
                          ),
                          TextSpan(
                            text: ' In!',
                            style: GoogleFonts.getFont(
                              'Nunito',
                              fontWeight: FontWeight.w900,
                              fontSize: 64,
                              letterSpacing: 2.6,
                              color: Color(0xFF3E3E3E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    PaddingwithTextFieldWidget(
                      hinttext: "Email",
                      controllerUse: emailctrl,
                      warna: Colors.black12,
                      L: 0,
                      T: 50,
                      R: 40,
                      B: 0,
                      lebar: 350,
                      tinggi: 50,
                    ),
                    PaddingwithTextFieldWidget(
                      hinttext: "Password",
                      controllerUse: passctrl,
                      warna: Colors.black12,
                      L: 0,
                      T: 20,
                      R: 40,
                      B: 0,
                      lebar: 350,
                      tinggi: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: ElevatedButton(
                                      onPressed: () {}, child: Text("Sign In")),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Register(),
                                            ),
                                          );
                                        },
                                        child: Text("Sign Up")))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
