// To parse this JSON data, do
//
//     final historiaModel = historiaModelFromJson(jsonString);

import 'dart:convert';

HistoriaModel historiaModelFromJson(String str) => HistoriaModel.fromJson(json.decode(str));

String historiaModelToJson(HistoriaModel data) => json.encode(data.toJson());

class HistoriaModel {
    HistoriaModel({
        this.data,
    });

    List<Historia> data;

    factory HistoriaModel.fromJson(Map<String, dynamic> json) => HistoriaModel(
        data: List<Historia>.from(json["data"].map((x) => Historia.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Historia {
    Historia({
        this.foto,
        this.nombre,
    });

    String foto;
    String nombre;

    factory Historia.fromJson(Map<String, dynamic> json) => Historia(
        foto: json["foto"],
        nombre: json["nombre"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "foto": foto,
    };
}
