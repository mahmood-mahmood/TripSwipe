class AutoModel {
  String? autoID;
  String brandName;
  int price;
  String photo;
  int contact;
  String vehNumber;
  String locationName;
  String providerName;

  AutoModel({
    this.autoID,
    required this.brandName,
    required this.price,
    required this.photo,
    required this.contact,
    required this.vehNumber,
    required this.locationName,
    required this.providerName,
  });

  factory AutoModel.fromMap(Map<String, dynamic> map) {
    return AutoModel(
      autoID: map['autoID'],
      brandName: map['brandName'],
      price: map['price'],
      photo: map['photo'],
      contact: map['contact'],
      vehNumber: map['vehNumber'],
      locationName: map['locationName'],
      providerName: map['providerName'],
    );
  }

  Map<String, dynamic> toMap(autoId) {
    return {
      'autoID': autoId,
      'brandName': brandName,
      'price': price,
      'photo': photo,
      'contact': contact,
      'vehNumber': vehNumber,
      'locationName': locationName,
      'providerName': providerName,
    };
  }
}
