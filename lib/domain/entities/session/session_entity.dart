class SessionEntity {
  final String token;
  final int timeExpired;

  const SessionEntity({
    required this.token,
    required this.timeExpired,
  });

  SessionEntity copyWith({
    String? token,
    int? timeExpired,
  }) {
    return SessionEntity(
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

  factory SessionEntity.fromMap(Map<String, dynamic> map) {
    return SessionEntity(
      token: map['token'] as String,
      timeExpired: map['timeExpired'] as int,
    );
  }
}
