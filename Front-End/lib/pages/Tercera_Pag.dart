import 'package:flutter/material.dart';
import 'package:prueba_front_end/models/new_post_model.dart';

class CommentPage extends StatelessWidget {
  final Comment comment;

  const CommentPage({Key key, this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuarios'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Divider(color: Colors.black),
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.blueGrey,
              ),
              title: Text('Nombre:'),
              subtitle: Text(comment.nombre),
            ),
            Divider(color: Colors.black),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.blueGrey,
              ),
              title: Text('Correo:'),
              subtitle: Text(comment.correo),
            ),
            Divider(color: Colors.black),
            ListTile(
              leading: Icon(
                Icons.account_circle_sharp,
                color: Colors.blueGrey,
              ),
              title: Text('Edad:'),
              subtitle: Text(comment.edad.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
