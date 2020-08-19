// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
    PostModel({
        this.data,
    });

    List<Post> data;

    factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        data: List<Post>.from(json["data"].map((x) => Post.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Post {
    Post({
        this.foto,
        this.descripcion,
        this.fotoperfil,
        this.nombre,
        this.ubicacion,
        this.likes,
        this.comentarios,
        this.likefotos,
    });

    String foto;
    String descripcion;
    String fotoperfil;
    String nombre;
    String ubicacion;
    int likes;
    int comentarios;
    List<String> likefotos;

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        foto: json["foto"],
        descripcion: json["descripcion"],
        fotoperfil: json["fotoperfil"],
        nombre: json["nombre"],
        ubicacion: json["ubicacion"],
        likes: json["likes"],
        comentarios: json["comentarios"],
        likefotos: List<String>.from(json["likefotos"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "foto": foto,
        "descripcion": descripcion,
        "fotoperfil": fotoperfil,
        "nombre": nombre,
        "ubicacion": ubicacion,
        "likes": likes,
        "comentarios": comentarios,
        "likefotos": List<dynamic>.from(likefotos.map((x) => x)),
    };
}
