import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:prueba_front_end/models/post_model.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SENA'),
      ),
      body: SingleChildScrollView(
          child: FutureBuilder<Post>(
        future: getInfo(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Post post = snapshot.data;
            return respuesta(post);
          }
          return Center(child: CircularProgressIndicator());
        },
      )),
    );
  }

  Column respuesta(Post post) {
    return Column(
      children: [
        Divider(),
        ListTile(
          leading: Icon(Icons.title),
          title: Text('Nombre:'),
          subtitle: Text(post.nombre),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.content_copy),
          title: Text('Correo:'),
          subtitle: Text(post.correo),
        ),
        ListTile(
          leading: Icon(Icons.account_circle_sharp),
          title: Text('Edad:'),
          subtitle: Text(post.edad.toString()),
        ),
      ],
    );
  }

  Future<Post> getInfo() async {
    var uri = Uri.parse('http://4ad721eb212e.ngrok.io/comments');
    final respuesta = await http.get(uri);
    if (respuesta.statusCode == 200) {
      return new Post.fromJson(respuesta.body);
    } else {
      return null;
    }
  }
}
