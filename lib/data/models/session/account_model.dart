class AccountModel {
  final String account;
  final String password;

  const AccountModel({
    required this.account,
    required this.password,
  });

  AccountModel copyWith({
    String? account,
    String? password,
  }) {
    return AccountModel(
      account: account ?? this.account,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'account': account,
      'password': password,
    };
  }

  factory AccountModel.fromMap(Map<String, dynamic> map) {
    return AccountModel(
      account: map['account'] as String,
      password: map['password'] as String,
    );
  }
}
