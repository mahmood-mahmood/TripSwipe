class AutomobileWorkshopModel {
  String? workshopID;
  String workshopType;
  String workshopName;
  String photo;
  int contact;
  String location;

  AutomobileWorkshopModel({
    this.workshopID,
    required this.workshopType,
    required this.workshopName,
    required this.photo,
    required this.contact,
    required this.location,
  });

  factory AutomobileWorkshopModel.fromMap(Map<String, dynamic> map) {
    return AutomobileWorkshopModel(
      workshopID: map['workshopID'],
      workshopType: map['workshopType'],
      workshopName: map['workshopName'],
      photo: map['photo'],
      contact: map['contact'],
      location: map['location'],
    );
  }

  Map<String, dynamic> toMap(workshopId) {
    return {
      'workshopID': workshopId,
      'workshopType': workshopType,
      'workshopName': workshopName,
      'photo': photo,
      'contact': contact,
      'location': location,
    };
  }
}
