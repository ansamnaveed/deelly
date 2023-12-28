class SignUpError {
  int? status;
  Message? message;

  SignUpError({
    this.status,
    this.message,
  });

  factory SignUpError.fromJson(Map<String, dynamic> json) => SignUpError(
        status: json["status"],
        message:
            json["message"] == null ? null : Message.fromJson(json["message"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message?.toJson(),
      };
}

class Message {
  String? firstName;
  String? lastName;
  String? mobileNumber;
  String? password;
  String? country;
  String? city;

  Message({
    this.firstName,
    this.lastName,
    this.mobileNumber,
    this.password,
    this.country,
    this.city,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        firstName: json["first_name"] == null ? "" : json["first_name"][0],
        lastName: json["last_name"] == null ? "" : json["last_name"][0],
        mobileNumber:
            json["mobile_number"] == null ? "" : json["mobile_number"][0],
        password: json["password"] == null ? "" : json["password"][0],
        country: json["country"] == null ? "" : json["country"][0],
        city: json["city"] == null ? "" : json["city"][0],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName == null ? "" : firstName!,
        "last_name": lastName == null ? "" : lastName!,
        "mobile_number": mobileNumber == null ? "" : mobileNumber!,
        "password": password == null ? "" : password!,
        "country": country == null ? "" : country!,
        "city": city == null ? "" : city!,
      };
}
