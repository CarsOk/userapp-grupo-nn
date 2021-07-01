import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Primera_Pag.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bienvenidos a mi app')),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/logo1.png'),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Image.asset(
          //       'assets/whatsapp.png',
          //       width: 60.0,
          //     ),
          //     Image.asset(
          //       'assets/fb.png',
          //       width: 30.0,
          //     ),
          //     Image.asset(
          //       'assets/ig.png',
          //       width: 30.0,
          //     ),
          //   ],
          // )
        ],
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Company DK'),
                accountEmail: Text('companydk@gmail.com'),
                decoration: BoxDecoration(color: Colors.green),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: Text('DK', style: TextStyle(fontSize: 30.0)))),
            Ink(
              color: Colors.white,
              child: (ListTile(
                  title: Text('Lista de usuarios'),
                  leading: Icon(Icons.folder),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => FirstRoute()));
                  })),
            ),
            //Ink(
            //   color: Colors.white,
            //   child: (ListTile(
            //       title: Text('Consumir API'),
            //       leading: Icon(Icons.east),
            //       onTap: () {
            //         Navigator.of(context).pop();
            //         Navigator.of(context).push(MaterialPageRoute(
            //             builder: (BuildContext context) => SecondRoute()));
            //       })),
            // ),
            // Ink(
            //   color: Colors.white,
            //   child: (ListTile(
            //       title: Text('Clientes'),
            //       leading: Icon(Icons.supervisor_account),
            //       onTap: () {
            //         Navigator.of(context).pop();
            //         Navigator.of(context).push(MaterialPageRoute(
            //             builder: (BuildContext context) => ThirdRoute()));
            //       })),
            // ),
            // Ink(
            //   color: Colors.white,
            //   child: (ListTile(
            //       title: Text('Borrar'),
            //       leading: Icon(Icons.supervisor_account),
            //       onTap: () {
            //         Navigator.of(context).pop();
            //         Navigator.of(context).push(MaterialPageRoute(
            //             builder: (BuildContext context) => ThirdRoute()));
            //       })),
            // ),
          ],
        ),
      ),
    );
  }
}
