import 'package:flutter/material.dart';
import 'package:login/WidgetCollection/dropDown.dart';
import 'package:login/WidgetCollection/textfieldwithpadding.dart';
import 'package:login/modelregister.dart';
import 'package:login/registrasiList.dart';

List<String> type = ["PRESIDEN", "DPR RI", "DPRD PROVINSI"];
List<String> partai = ["PDIP", "GERINDRA", "PKS"];
String? typeselect;
String? partaiselect;

class nextRegister extends StatefulWidget {
  final String nama;
  final String email;
  final int noHP;
  final String password;
  const nextRegister(
      {super.key,
      required this.nama,
      required this.email,
      required this.noHP,
      required this.password});

  @override
  State<nextRegister> createState() => _nextRegisterState();
}

class _nextRegisterState extends State<nextRegister> {
  TextEditingController _typecontroller = TextEditingController();
  TextEditingController _noUrutcontroller = TextEditingController();
  TextEditingController _Dapilcontroller = TextEditingController();
  TextEditingController _partaicontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/gambar/background.jpg"),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(3, 195, 3, 0),
              height: MediaQuery.of(context).size.height,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  MyDropdownMenu(
                      controllerUse: _typecontroller,
                      field: type,
                      onSelected: (value) {
                        setState(() {
                          typeselect = value;
                        });
                      },
                      hint: "Type"),
                  PaddingwithTextFieldWidget(
                    hinttext: "No Urut",
                    controllerUse: _noUrutcontroller,
                    warna: Colors.black12,
                    L: 15,
                    R: 15,
                    T: 20,
                    B: 0,
                    lebar: 350,
                    tinggi: 60,
                  ),
                  PaddingwithTextFieldWidget(
                    hinttext: "Dapil",
                    controllerUse: _Dapilcontroller,
                    warna: Colors.black12,
                    L: 15,
                    R: 15,
                    T: 20,
                    B: 0,
                    lebar: 350,
                    tinggi: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: MyDropdownMenu(
                        controllerUse: _partaicontroller,
                        field: partai,
                        onSelected: (value) {
                          setState(() {
                            partaiselect = value;
                          });
                        },
                        hint: "Partai"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          modelRegis register = modelRegis(
                              context,
                              widget.nama,
                              widget.email,
                              widget.noHP,
                              widget.password,
                              _typecontroller.text,
                              int.parse(_noUrutcontroller.text),
                              _Dapilcontroller.text,
                              _partaicontroller.text);
                          registrasi.add(register);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => registrasiList()));
                        });
                      },
                      child: Text("SIGN UP")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
