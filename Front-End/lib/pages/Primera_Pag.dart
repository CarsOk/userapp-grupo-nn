import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prueba_front_end/icons/my_news_icons.dart';

import 'package:prueba_front_end/models/Comment_model.dart';
import 'package:prueba_front_end/pages/Segunda_Pag.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentarios'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondRoute()));
        },
      ),
      body: FutureBuilder<List<Comment>>(
          future: getInfo(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Comment>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              List<Comment> comentarios = snapshot.data;

              return respuesta(comentarios);
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }

  ListView respuesta(List<Comment> comentarios) {
    return ListView.builder(
        itemCount: comentarios.length,
        itemBuilder: (BuildContext context, int index) {
          Comment comment = comentarios[index];
          return Column(
            children: [
              ListTile(
                leading: Icon(MyNewsIcons.user, color: Colors.black),
                title: Text('Nombre:', style: TextStyle(color: Colors.black)),
                subtitle: Text(comment.nombre),
              ),
              ListTile(
                leading: Icon(MyNewsIcons.google, color: Colors.black),
                title: Text('Correo:', style: TextStyle(color: Colors.black)),
                subtitle: Text(comment.correo),
              ),
              ListTile(
                leading: Icon(Icons.info, color: Colors.black),
                title: Text('Edad:', style: TextStyle(color: Colors.black)),
                subtitle: Text(comment.edad.toString()),
              ),
              Divider(color: Colors.blue[900]),
            ],
          );
        });
  }

  Future<List<Comment>> getInfo() async {
    final url = Uri.parse('https://dfe4858c62ba.ngrok.io/comments');
    final respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      return commentFromJson(respuesta.body);
    } else {
      return null;
    }
  }
}
