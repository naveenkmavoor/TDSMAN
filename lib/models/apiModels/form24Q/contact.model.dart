import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class Contact {
  final int id;
  final String primary_email;
  final int mobile_number;

  Contact({
    required this.id,
    required this.primary_email,
    required this.mobile_number,
  });

  Contact copyWith({
    int? id,
    String? primary_email,
    int? mobile_number,
  }) {
    return Contact(
      id: id ?? this.id,
      primary_email: primary_email ?? this.primary_email,
      mobile_number: mobile_number ?? this.mobile_number,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '@entity': "contact",
      'id': id,
      'primary_email': primary_email,
      'mobile_number': mobile_number,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'],
      primary_email: map['primary_email'],
      mobile_number: map['mobile_number'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Contact.fromJson(String source) =>
      Contact.fromMap(json.decode(source));

  @override
  String toString() =>
      'Contact(id: $id, primary_email: $primary_email, mobile_number: $mobile_number)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Contact && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
