// To parse this JSON data, do
//
//     final comment = commentFromJson(jsonString);

import 'dart:convert';

List<Comment> commentFromJson(String str) =>
    List<Comment>.from(json.decode(str).map((x) => Comment.fromJson(x)));

String commentToJson(List<Comment> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Comment {
  Comment({
    this.id,
    this.nombre,
    this.correo,
    this.edad,
  });

  int id;
  String nombre;
  String correo;
  String edad;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        nombre: json["nombre"],
        correo: json["correo"],
        edad: json["edad"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "correo": correo,
        "edad": edad,
      };
}
