import 'package:flutter/material.dart';
import 'package:prueba_front_end/icons/my_news_icons.dart';
import 'package:prueba_front_end/models/new_post_model.dart';

class CommentPage extends StatelessWidget {
  final Comment comment;

  const CommentPage({Key key, this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Usuario'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              leading: Icon(
                MyNewsIcons.user,
                color: Colors.black,
              ),
              title: Text('Nombre:'),
              subtitle: Text(comment.nombre),
            ),
            Divider(color: Colors.blue[900]),
            ListTile(
              leading: Icon(
                MyNewsIcons.google,
                color: Colors.black,
              ),
              title: Text('Correo:'),
              subtitle: Text(comment.correo),
            ),
            Divider(color: Colors.blue[900]),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.black,
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
