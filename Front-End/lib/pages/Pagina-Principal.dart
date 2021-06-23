import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bienvenidos a mi app')),
      body: Center(
          child: ElevatedButton.icon(
        icon: Icon(
          Icons.pages,
          color: Colors.greenAccent,
          size: 24.0,
        ),
        label: Text('Pasar a la siguiente pagina'),
        onPressed: () {
          print('Pressed');
        },
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Kevin Castro'),
                accountEmail: Text('kevinmcf04@gmail.com'),
                decoration: BoxDecoration(color: Colors.green),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: Text('KM', style: TextStyle(fontSize: 30.0)))),
            // Ink(
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
          ],
        ),
      ),
    );
  }
}
