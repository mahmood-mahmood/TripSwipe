class AccessoriesModel {
  String? accessoriesID;
  String brandName;
  int price;
  String photo;
  int contact;
  String location;

  AccessoriesModel({
    this.accessoriesID,
    required this.brandName,
    required this.price,
    required this.photo,
    required this.contact,
    required this.location,
  });

  factory AccessoriesModel.fromMap(Map<String, dynamic> map) {
    return AccessoriesModel(
      accessoriesID: map['accessoriesID'],
      brandName: map['brandName'],
      price: map['price'],
      photo: map['photo'],
      contact: map['contact'],
      location: map['location'],
    );
  }

  Map<String, dynamic> toMap(accessoriesId) {
    return {
      'accessoriesID': accessoriesId,
      'brandName': brandName,
      'price': price,
      'photo': photo,
      'contact': contact,
      'location': location,
    };
  }
}
