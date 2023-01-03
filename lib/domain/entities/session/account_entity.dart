class AccountEntity {
  final String account;
  final String password;

  const AccountEntity({
    required this.account,
    required this.password,
  });

  AccountEntity copyWith({
    String? account,
    String? password,
  }) {
    return AccountEntity(
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

  factory AccountEntity.fromMap(Map<String, dynamic> map) {
    return AccountEntity(
      account: map['account'] as String,
      password: map['password'] as String,
    );
  }
}
