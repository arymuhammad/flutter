import 'dart:convert';

// class Brand {
//   bool? status;
//   String? message;
//   Null? errors;
//   List<Data>? data;

//   Brand({this.status, this.message, this.errors, this.data});

List<Brand> brandFromJson(String str) =>
    List<Brand>.from(json.decode(str)['data'].map((x) => Brand.fromJson(x)));
String brandToJson(List<Brand> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  // Brand.fromJson(Map<String, dynamic> json) {
  //   status = json['status'];
  //   message = json['message'];
  //   errors = json['errors'];
  //   if (json['data'] != null) {
  //     data = <Data>[];
  //     json['data'].forEach((v) {
  //       data!.add(new Data.fromJson(v));
  //     });
  //   }
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['status'] = this.status;
  //   data['message'] = this.message;
  //   data['errors'] = this.errors;
  //   if (this.data != null) {
  //     data['data'] = this.data!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
// }

class Brand {
  int iD;
  Null deletedAt;
  int? id;
  String brand;
  String image;
  String createdAt;
  String updatedAt;

  Brand(
      {required this.iD,
      required this.deletedAt,
      required this.id,
      required this.brand,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

 factory Brand.fromJson(Map<String, dynamic> json) => Brand(
   iD : json['ID'],
    deletedAt : json['DeletedAt'],
    id : json['id'],
    brand : json['brand'],
    image : json['image'],
    createdAt : json['CreatedAt'],
    updatedAt : json['UpdatedAt'],
 );
    
  Map<String, dynamic> toJson() => {
     'ID' : iD,
      'DeletedAt' : deletedAt,
      'id' : id,
     'brand' : brand,
      'image' : image,
      'CreatedAt' : createdAt,
      'UpdatedAt' : updatedAt,
  };

    // final Map<String, dynamic> data = new Map<String, dynamic>();
    
    // return data;
  }
  
// }