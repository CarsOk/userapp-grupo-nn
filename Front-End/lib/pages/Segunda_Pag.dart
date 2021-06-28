import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prueba_front_end/models/new_post_model.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final comment = new Comment(edad: "");

    return Scaffold(
        appBar: AppBar(
          title: Text('SENA'),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                  decoration: InputDecoration(
                      helperText: 'Nombre completo',
                      hintText: 'Nombre',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.account_box,
                        color: Colors.blueGrey,
                      )),
                  onChanged: (valor) => comment.nombre = valor),
              TextField(
                  decoration: InputDecoration(
                      helperText: 'Escriba su correo',
                      hintText: 'Correo',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email, color: Colors.blueGrey)),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (valor) => comment.correo = valor),
              TextField(
                  decoration: InputDecoration(
                      helperText: 'Escriba su edad',
                      hintText: 'Edad',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.info,
                        color: Colors.blueGrey,
                      )),
                  maxLength: 3,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  onChanged: (valor) => comment.edad = valor),
              // ElevatedButton(
              //     onPressed: () async {
              //       Comment comentario = await registrar(comment.toJson());
              //       if (comentario != null) {
              //         Navigator.pop(context);
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => CommentPage(
              //                       comment: comentario,
              //                     )));
              //       } else {
              //         print('No guardado');
              //         final snackBar = SnackBar(content: Text('No Guardado'));
              //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
              //       }
              //     },
              //     child: Text('Guardar'))
            ],
          ),
        ));
  }

  Future<Comment> registrar(Map<String, dynamic> datos) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    final response = await http.post(url, body: datos);
    print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');
    if (response.statusCode == 201) {
      return commentFromJson(response.body);
    } else {
      return null;
    }
  }
}
