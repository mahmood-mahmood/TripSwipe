class RentVehicleModel {
  String? vehicleID;
  String vehicleType;
  String brandName;
  int price;
  String photo;
  int contact;
  String vehNumber;
  String locationName;

  RentVehicleModel({
    this.vehicleID,
    required this.vehicleType,
    required this.brandName,
    required this.price,
    required this.photo,
    required this.contact,
    required this.vehNumber,
    required this.locationName,
  });

  factory RentVehicleModel.fromMap(Map<String, dynamic> map) {
    return RentVehicleModel(
      vehicleID: map['vehicleID'],
      vehicleType: map['vehicleType'],
      brandName: map['brandName'],
      price: map['price'],
      photo: map['photo'],
      contact: map['contact'],
      vehNumber: map['vehNumber'],
      locationName: map['locationName'],
    );
  }

  Map<String, dynamic> toMap(vehicleId) {
    return {
      'vehicleID': vehicleId,
      'vehicleType': vehicleType,
      'brandName': brandName,
      'price': price,
      'photo': photo,
      'contact': contact,
      'vehNumber': vehNumber,
      'locationName': locationName,
    };
  }
}
