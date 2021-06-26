import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class Money {
  final double value;
  final String value_type;
  final String currency;
  Money({
    required this.value,
    required this.value_type,
    required this.currency,
  });

  Money copyWith({
    double? value,
    String? value_type,
    String? currency,
  }) {
    return Money(
      value: value ?? this.value,
      value_type: value_type ?? this.value_type,
      currency: currency ?? this.currency,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '@entity': "money",
      'value': value,
      'value_type': value_type,
      'currency': currency,
    };
  }

  factory Money.fromMap(Map<String, dynamic> map) {
    return Money(
      value: map['value'],
      value_type: map['value_type'],
      currency: map['currency'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Money.fromJson(String source) => Money.fromMap(json.decode(source));

  @override
  String toString() =>
      'Money(value: $value, value_type: $value_type, currency: $currency)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Money &&
        other.value == value &&
        other.value_type == value_type &&
        other.currency == currency;
  }

  @override
  int get hashCode => value.hashCode ^ value_type.hashCode ^ currency.hashCode;
}
