import 'package:flutter/material.dart';
import 'package:login/modelregister.dart';

class registrasiList extends StatefulWidget {
  const registrasiList({super.key});

  @override
  State<registrasiList> createState() => _registrasiListState();
}

class _registrasiListState extends State<registrasiList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: registrasi.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(registrasi[index].nama),
            subtitle: Column(
              children: [
                Text(registrasi[index].email),
                Text(registrasi[index].noHP.toString()),
                Text(registrasi[index].password),
                Text(registrasi[index].type),
                Text(registrasi[index].noUrut.toString()),
                Text(registrasi[index].dapil),
                Text(registrasi[index].partai),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
