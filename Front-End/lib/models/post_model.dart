import 'dart:convert';

class Post {
  String nombre;
  String correo;
  int edad;

  Post.fromJson(String json) {
    Map mapa = jsonDecode(json);
    this.nombre = mapa['nombre'];
    this.correo = mapa['correo'];
    this.edad = mapa['edad'];
  }
}
