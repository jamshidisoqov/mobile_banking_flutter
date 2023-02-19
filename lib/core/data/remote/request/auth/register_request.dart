class RegisterRequest {
  String? phone;
  String? password;
  String? firstName;
  String? lastName;
  String? bornDate;
  String? gender;

  RegisterRequest(
      {required this.phone,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.bornDate,
      required this.gender});

  RegisterRequest.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    password = json['password'];
    firstName = json['first-name'];
    lastName = json['last-name'];
    bornDate = json['born-date'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone'] = phone;
    data['password'] = password;
    data['first-name'] = firstName;
    data['last-name'] = lastName;
    data['born-date'] = bornDate;
    data['gender'] = gender;
    return data;
  }
}
