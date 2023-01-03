class SessionModel {
  final String token;
  final int timeExpired;

  const SessionModel({
    required this.token,
    required this.timeExpired,
  });

  SessionModel copyWith({
    String? token,
    int? timeExpired,
  }) {
    return SessionModel(
      token: token ?? this.token,
      timeExpired: timeExpired ?? this.timeExpired,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'token': token,
      'timeExpired': timeExpired,
    };
  }

  factory SessionModel.fromMap(Map<String, dynamic> map) {
    return SessionModel(
      token: map['token'] as String,
      timeExpired: map['timeExpired'] as int,
    );
  }
}
