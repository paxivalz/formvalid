class UserModel {
  String username;
  String mail;
  String address;
  String age;

  UserModel({
    required this.username,
    required this.mail,
    required this.address,
    required this.age,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        username: json['username'],
        mail: json['mail'],
        address: json['address'],
        age: json['age'],
      );

  Map<String, dynamic> toJson() => {
        'username': username,
        'mail': mail,
        'address': address,
        'age': age,
      };
}
