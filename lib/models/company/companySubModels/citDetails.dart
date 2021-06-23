import 'dart:convert';

class CITDetails {
  final String address;
  final String city;
  final int pin;

  CITDetails({
    required this.address,
    required this.city,
    required this.pin,
  });

  CITDetails copyWith({
    String? address,
    String? city,
    int? pin,
  }) {
    return CITDetails(
      address: address ?? this.address,
      city: city ?? this.city,
      pin: pin ?? this.pin,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address,
      'city': city,
      'pin': pin,
    };
  }

  factory CITDetails.fromMap(Map<String, dynamic> map) {
    return CITDetails(
      address: map['address'],
      city: map['city'],
      pin: map['pin'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CITDetails.fromJson(String source) =>
      CITDetails.fromMap(json.decode(source));

  @override
  String toString() => 'CITDetails(address: $address, city: $city, pin: $pin)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CITDetails &&
        other.address == address &&
        other.city == city &&
        other.pin == pin;
  }

  @override
  int get hashCode => address.hashCode ^ city.hashCode ^ pin.hashCode;
}
