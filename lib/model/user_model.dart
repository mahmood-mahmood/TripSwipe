class UserModel {
  String userID;
  String userName;
  int userPhone;
  String userEmail;

  UserModel({
    required this.userID,
    required this.userName,
    required this.userPhone,
    required this.userEmail,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        userID: map['userID'],
        userName: map['userName'],
        userPhone: map['userPhone'],
        userEmail: map['userEmail']);
  }

  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'userName': userName,
      'userPhone': userPhone,
      'userEmail': userEmail,
    };
  }
}
