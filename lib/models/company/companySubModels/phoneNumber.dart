import 'dart:convert';

class PhoneNumber {
  final int std;
  final int phoneNumber;
  PhoneNumber({
    required this.std,
    required this.phoneNumber,
  });

  PhoneNumber copyWith({
    int? std,
    int? phoneNumber,
  }) {
    return PhoneNumber(
      std: std ?? this.std,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'std': std,
      'phoneNumber': phoneNumber,
    };
  }

  factory PhoneNumber.fromMap(Map<String, dynamic> map) {
    return PhoneNumber(
      std: map['std'],
      phoneNumber: map['phoneNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PhoneNumber.fromJson(String source) =>
      PhoneNumber.fromMap(json.decode(source));

  @override
  String toString() => 'PhoneNumber(std: $std, phoneNumber: $phoneNumber)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PhoneNumber &&
        other.std == std &&
        other.phoneNumber == phoneNumber;
  }

  @override
  int get hashCode => std.hashCode ^ phoneNumber.hashCode;
}
