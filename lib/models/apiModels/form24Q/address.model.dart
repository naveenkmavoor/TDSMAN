import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class Address {
  final int id;
  final String full_address;
  final String country;
  Address({
    required this.id,
    required this.full_address,
    required this.country,
  });

  Address copyWith({
    int? id,
    String? full_address,
    String? country,
  }) {
    return Address(
      id: id ?? this.id,
      full_address: full_address ?? this.full_address,
      country: country ?? this.country,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '@entity': "address",
      'id': id,
      'full_address': full_address,
      'country': country,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      id: map['id'],
      full_address: map['full_address'],
      country: map['country'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source));

  @override
  String toString() =>
      'Address(id: $id, full_address: $full_address, country: $country)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Address && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
