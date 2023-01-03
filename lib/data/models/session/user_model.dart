class UserModel {
  final String id;
  final String name;
  final String phone;
  final String email;
  final String gender;
  final String iconUrl;

  const UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.gender,
    required this.iconUrl,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String? phone,
    String? email,
    String? gender,
    String? iconUrl,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      iconUrl: iconUrl ?? this.iconUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'gender': gender,
      'iconUrl': iconUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      name: map['name'] as String,
      phone: map['phone'] as String,
      email: map['email'] as String,
      gender: map['gender'] as String,
      iconUrl: map['iconUrl'] as String,
    );
  }
}
