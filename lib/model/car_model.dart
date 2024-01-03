class CarTravellerModel {
  String? carID;
  String carType;
  String brandName;
  int price;
  String photo;
  int contact;
  String vehNumber;
  String locationName;
  String providerName;

  CarTravellerModel({
    this.carID,
    required this.carType,
    required this.brandName,
    required this.price,
    required this.photo,
    required this.contact,
    required this.vehNumber,
    required this.locationName,
    required this.providerName,
  });

  factory CarTravellerModel.fromMap(Map<String, dynamic> map) {
    return CarTravellerModel(
      carID: map['carID'],
      carType: map['carType'],
      brandName: map['brandName'],
      price: map['price'],
      photo: map['photo'],
      contact: map['contact'],
      vehNumber: map['vehNumber'],
      locationName: map['locationName'],
      providerName: map['providerName'],
    );
  }

  Map<String, dynamic> toMap(carId) {
    return {
      'carID': carId,
      'carType': carType,
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
