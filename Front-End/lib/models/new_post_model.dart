import 'dart:convert';

Comment commentFromJson(String str) => Comment.fromJson(json.decode(str));

String commentToJson(Comment data) => json.encode(data.toJson());

class Comment {
  Comment({
    this.nombre,
    this.correo,
    this.edad,
  });

  String nombre;
  String correo;
  String edad;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        nombre: json["nombre"],
        correo: json["correo"],
        edad: json["edad"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "correo": correo,
        "edad": edad,
      };
}
