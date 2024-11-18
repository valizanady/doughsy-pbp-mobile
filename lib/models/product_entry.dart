// To parse this JSON data, do
//
//     final doughsy = doughsyFromJson(jsonString);

import 'dart:convert';

List<Doughsy> doughsyFromJson(String str) => List<Doughsy>.from(json.decode(str).map((x) => Doughsy.fromJson(x)));

String doughsyToJson(List<Doughsy> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Doughsy {
    String model;
    String pk;
    Fields fields;

    Doughsy({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Doughsy.fromJson(Map<String, dynamic> json) => Doughsy(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String itemName;
    String category;
    int price;
    String description;
    String topping;
    String size;
    bool availability;
    int quantity;

    Fields({
        required this.user,
        required this.itemName,
        required this.category,
        required this.price,
        required this.description,
        required this.topping,
        required this.size,
        required this.availability,
        required this.quantity,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        itemName: json["item_name"],
        category: json["category"],
        price: json["price"],
        description: json["description"],
        topping: json["topping"],
        size: json["size"],
        availability: json["availability"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "item_name": itemName,
        "category": category,
        "price": price,
        "description": description,
        "topping": topping,
        "size": size,
        "availability": availability,
        "quantity": quantity,
    };
}
